package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.Privilege._
import KXCore.common.peripheral._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core._
import KXCore.superscalar.core.frontend._

class BackEndIO(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, backendParams}
  val axi         = new AXIBundle(axiParams)
  val dtlbReq     = Output(new TLBReq)
  val dtlbResp    = Input(new TLBResp)
  val fetchPacket = Flipped(Decoupled(new FetchBufferResp()))
  val getPC       = Flipped(new GetPCFromFtqIO)
}

class BackEnd(implicit params: CoreParameters) extends Module {
  import params.{commonParams, backendParams}
  import backendParams.{coreWidth, issueParams}

  val io = IO(new BackEndIO)

  val decoder         = Module(new Decoder)
  val renameMapTable  = Module(new RenameMapTable(true))
  val renameFreeList  = Module(new RenameFreeList(coreWidth, coreWidth))
  val renameBusyTable = Module(new RenameBusyTable(1, true))
  val rob             = Module(new ReorderBuffer(2))
  val dispatcher      = Module(new Dispatcher)
  val memIq           = Module(new IssueUnitCollapsing(3, issueParams(0)))
  val intIq           = Module(new IssueUnitCollapsing(3, issueParams(1)))

  val flush = Wire(Bool())

  memIq.io.flush := flush
  intIq.io.flush := flush

  // decode & rename
  val decUopFire    = Wire(UInt(coreWidth.W))
  val decUopFireReg = RegInit(0.U(coreWidth.W))
  decUopFireReg        := Mux(io.fetchPacket.ready, 0.U, decUopFire)
  io.fetchPacket.ready := decUopFire.andR || flush

  val decData = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  decData.valid := io.fetchPacket.valid
  for (i <- 0 until coreWidth) {
    decoder.io.req(i)                 := io.fetchPacket.bits.uops(i).bits
    renameMapTable.io.mapReqs(i).ldst := io.fetchPacket.bits.uops(i).bits.ldst
    renameMapTable.io.mapReqs(i).lrs1 := io.fetchPacket.bits.uops(i).bits.lrs1
    renameMapTable.io.mapReqs(i).lrs2 := io.fetchPacket.bits.uops(i).bits.lrs2
    decData.bits(i).valid             := io.fetchPacket.bits.uops(i).valid && !decUopFireReg(i)
    decData.bits(i).bits              := decoder.io.resp(i)
    decData.bits(i).bits.stalePdst    := renameMapTable.io.mapResps(i).stalePdst
    decData.bits(i).bits.prs1         := renameMapTable.io.mapResps(i).prs1
    decData.bits(i).bits.prs2         := renameMapTable.io.mapResps(i).prs2
  }

  val decToRen = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  PipeConnect(Some(flush), decData, decToRen)

  decUopFire := decUopFireReg | (Fill(coreWidth, decData.ready) & VecInit(decData.bits.map(_.valid)).asUInt)

  // rename & dispatch
  val disUopReady   = Wire(UInt(coreWidth.W))
  val disUopFire    = Wire(UInt(coreWidth.W))
  val disUopFireReg = RegInit(0.U(coreWidth.W))
  decUopFireReg  := Mux(decToRen.ready, 0.U, disUopFire)
  decToRen.ready := VecInit(decToRen.bits.map(_.valid)).asUInt === disUopFire || flush

  val disData = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  for (i <- 0 until coreWidth) {
    renameFreeList.io.allocPregs(i).ready := disData.bits(i).valid && disData.bits(i).bits.ldst =/= 0.U &&
      disUopReady(i)

    renameMapTable.io.renRemapReqs(i).valid := disData.bits(i).valid && disUopReady(i)
    renameMapTable.io.renRemapReqs(i).ldst  := disData.bits(i).bits.ldst
    renameMapTable.io.renRemapReqs(i).pdst  := disData.bits(i).bits.pdst

    renameBusyTable.io.uopReqs(i)    := disData.bits(i).bits
    renameBusyTable.io.rebusyReqs(i) := disData.bits(i).valid

    rob.io.alloc(i).ready := disData.bits(i).valid && disUopReady(i)
    rob.io.alloc(i).uop   := disData.bits(i).bits

    disData.bits(i).valid := decToRen.bits(i).valid && !disUopFireReg(i)
    (renameFreeList.io.allocPregs(i).valid || disData.bits(i).bits.ldst === 0.U) &&
    rob.io.alloc(i).valid
    disData.bits(i).bits        := decToRen.bits(i).bits
    disData.bits(i).bits.pdst   := renameFreeList.io.allocPregs(i).bits
    disData.bits(i).bits.robIdx := rob.io.alloc(i).idx
    for (j <- 0 until i) {
      when(decToRen.bits(j).valid) {
        when(decToRen.bits(j).bits.ldst === disData.bits(i).bits.ldst) {
          disData.bits(i).bits.stalePdst := decToRen.bits(j).bits.pdst
        }
        when(decToRen.bits(j).bits.ldst === disData.bits(i).bits.lrs1) {
          disData.bits(i).bits.prs1 := decToRen.bits(j).bits.pdst
        }
        when(decToRen.bits(j).bits.ldst === disData.bits(i).bits.lrs2) {
          disData.bits(i).bits.prs2 := decToRen.bits(j).bits.pdst
        }
      }
    }
    disData.bits(i).bits.prs1Busy := renameBusyTable.io.busyResps(i).prs1Busy
    disData.bits(i).bits.prs2Busy := renameBusyTable.io.busyResps(i).prs2Busy

    dispatcher.io.ren_uops(i).valid := disData.bits(i).valid
    dispatcher.io.ren_uops(i).bits  := disData.bits(i).bits

  }
  disUopReady := VecInit(dispatcher.io.ren_uops.map(_.ready)).asUInt
  disUopFire  := disUopFireReg | (disUopReady & VecInit(disData.bits.map(_.valid)).asUInt)

  // issue
  memIq.io.dis_uops := dispatcher.io.dis_uops(0)
  intIq.io.dis_uops := dispatcher.io.dis_uops(1)
}
