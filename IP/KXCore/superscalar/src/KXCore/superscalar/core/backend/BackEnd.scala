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
  import params.{commonParams, axiParams, frontendParams, backendParams}
  val axi         = new AXIBundle(axiParams)
  val dtlbReq     = Output(new TLBReq)
  val dtlbResp    = Input(new TLBResp)
  val fetchPacket = Flipped(Decoupled(new FetchBufferResp()))
  val getPC       = Flipped(Vec(3, new GetPCFromFtqIO))
  val commit = Valid(new Bundle {
    val ftqIdx   = UInt(log2Ceil(frontendParams.ftqNum).W)
    val brUpdate = Valid(new BrUpdateInfo)
  })
}

class BackEnd(implicit params: CoreParameters) extends Module {
  import params.{commonParams, backendParams}
  import backendParams.{coreWidth, issueParams, pregNum, memIQParams, unqIQParams, intIQParams}

  val io = IO(new BackEndIO)

  val decoder         = Module(new Decoder)
  val renameMapTable  = Module(new RenameMapTable(true))
  val renameFreeList  = Module(new RenameFreeList(coreWidth, coreWidth))
  val renameBusyTable = Module(new RenameBusyTable(true))
  val rob             = Module(new ReorderBuffer)
  val dispatcher      = Module(new Dispatcher)
  // val memIssUnit      = Module(new IssueUnitCollapsing(memIQParams))
  // val unqIssUnit = Module(new IssueUnitCollapsing(unqIQParams))
  // val intIssUnit = Module(new IssueUnitCollapsing(intIQParams))
  val intIssUnit  = Module(new IssueUnitCollapsing(intIQParams))
  val aluExeUnits = Seq.fill(1)(Module(new ALUExeUnit))
  val regFile     = Module(new FullyPortedRF(pregNum, aluExeUnits.map(_.nReaders).sum, aluExeUnits.length))

  val flush = Wire(Bool())

  renameMapTable.io.rollback := flush
  renameFreeList.io.rollback := flush
  // memIssUnit.io.flush := flush
  // unqIssUnit.io.flush := flush
  intIssUnit.io.flush := flush
  aluExeUnits.foreach(unit => unit.io_kill := flush)

  intIssUnit.io.fu_types := VecInit(aluExeUnits.map(_.io_fu_types))

  // decode & rename
  val decData = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  decData.valid := io.fetchPacket.valid
  for (i <- 0 until coreWidth) {
    decoder.io.req(i)                 := io.fetchPacket.bits.uops(i).bits
    renameMapTable.io.mapReqs(i).ldst := io.fetchPacket.bits.uops(i).bits.ldst
    renameMapTable.io.mapReqs(i).lrs1 := io.fetchPacket.bits.uops(i).bits.lrs1
    renameMapTable.io.mapReqs(i).lrs2 := io.fetchPacket.bits.uops(i).bits.lrs2
    decData.bits(i).valid             := io.fetchPacket.bits.uops(i).valid
    decData.bits(i).bits              := decoder.io.resp(i)
    decData.bits(i).bits.stalePdst    := renameMapTable.io.mapResps(i).stalePdst
    decData.bits(i).bits.prs1         := renameMapTable.io.mapResps(i).prs1
    decData.bits(i).bits.prs2         := renameMapTable.io.mapResps(i).prs2
  }

  val decToRen = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  PipeConnect(Some(flush), decData, decToRen)

  // rename & dispatch
  // 可能存在 uniq 指令 需要 rob 为空时入队，此时 disData 可能部分握手
  val disUopReady   = Wire(UInt(coreWidth.W))
  val disUopFire    = Wire(UInt(coreWidth.W))
  val disUopFireReg = RegInit(0.U(coreWidth.W))
  disUopFireReg  := Mux(decToRen.ready, 0.U, disUopFire)
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
  // dispatcher.io.dis_uops(0) <> memIssUnit.io.dis_uops
  // dispatcher.io.dis_uops(1) <>unqIssUnit.io.dis_uops
  dispatcher.io.dis_uops(0) := DontCare
  dispatcher.io.dis_uops(1) := DontCare
  dispatcher.io.dis_uops(2) <> intIssUnit.io.dis_uops

  // execute
  intIssUnit.io.iss_uops zip aluExeUnits map { case (iss_uop, exu) => iss_uop <> exu.io_iss_uop }
  (0 until aluExeUnits.length).foreach { i =>
    aluExeUnits(i).io_read_reqs(0) <> regFile.io.read_reqs(2 * i)
    aluExeUnits(i).io_read_reqs(1) <> regFile.io.read_reqs(2 * i + 1)
    io.getPC(i + 1).ftqIdx         := aluExeUnits(i).io_ftq_req(0)
    io.getPC(i + 2).ftqIdx         := aluExeUnits(i).io_ftq_req(1)
    aluExeUnits(i).io_ftq_resp(0)  := io.getPC(i + 1).info
    aluExeUnits(i).io_ftq_resp(1)  := io.getPC(i + 2).info
  }

  // write back
  (0 until aluExeUnits.length).foreach { i =>
    renameBusyTable.io.wbValids(i)      := aluExeUnits(i).io_alu_resp.valid
    renameBusyTable.io.wbPdsts(i)       := aluExeUnits(i).io_alu_resp.bits.uop.pdst
    intIssUnit.io.wakeup_ports(i).valid := aluExeUnits(i).io_alu_resp.valid
    intIssUnit.io.wakeup_ports(i).bits  := aluExeUnits(i).io_alu_resp.bits.uop.pdst
    regFile.io.write_ports(i).valid     := aluExeUnits(i).io_alu_resp.valid
    regFile.io.write_ports(i).bits.addr := aluExeUnits(i).io_alu_resp.bits.uop.pdst
    regFile.io.write_ports(i).bits.data := aluExeUnits(i).io_alu_resp.bits.data
    rob.io.write(i).valid               := aluExeUnits(i).io_alu_resp.valid
    rob.io.write(i).bits.uop            := aluExeUnits(i).io_alu_resp.bits.uop
    rob.io.write(i).bits.brInfo         := aluExeUnits(i).io_alu_resp.bits.brInfo
  }

  // commit
  io.getPC(0).ftqIdx := DontCare
  for (i <- 0 until coreWidth) {
    renameMapTable.io.comRemapReqs(i).valid := rob.io.commit.valids(i)
    renameMapTable.io.comRemapReqs(i).ldst  := rob.io.commit.uop(i).ldst
    renameMapTable.io.comRemapReqs(i).pdst  := rob.io.commit.uop(i).pdst

    renameFreeList.io.dealloc(i).valid := rob.io.commit.valids(i)
    renameFreeList.io.dealloc(i).bits  := rob.io.commit.uop(i).stalePdst
  }
  io.commit.valid         := rob.io.commit.valids.reduce(_ || _)
  io.commit.bits.ftqIdx   := rob.io.commit.ftqIdx
  io.commit.bits.brUpdate := rob.io.commit.brInfo
}
