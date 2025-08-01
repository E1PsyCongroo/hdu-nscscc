package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.Control._
import KXCore.common.Privilege._
import KXCore.common.peripheral._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core.frontend.FetchBufferResp

class BackEndIO(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, backendParams}
  val axi         = new AXIBundle(axiParams)
  val dtlbReq     = Output(new TLBReq)
  val dtlbResp    = Input(new TLBResp)
  val fetchPacket = Flipped(Decoupled(new FetchBufferResp()))
}

class BackEnd(implicit params: CoreParameters) extends Module {
  import params.{commonParams, backendParams}
  import backendParams.{coreWidth}

  val io = IO(new BackEndIO)

  val decoder         = Module(new Decoder)
  val renameMapTable  = Module(new RenameMapTable(true))
  val renameFreeList  = Module(new RenameFreeList(coreWidth, 1))
  val renameBusyTable = Module(new RenameBusyTable(1, true))

  val flush = Wire(Bool())

  // decode
  val uopFire    = Wire(UInt(coreWidth.W))
  val uopFireReg = RegInit(0.U(coreWidth.W))
  uopFireReg           := Mux(io.fetchPacket.ready, 0.U, uopFire)
  io.fetchPacket.ready := uopFire.andR

  val decData = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  decData.valid := io.fetchPacket.valid
  for (i <- 0 until coreWidth) {
    decoder.io.req(i)                 := io.fetchPacket.bits.uops(i).bits
    renameMapTable.io.mapReqs(i).ldst := io.fetchPacket.bits.uops(i).bits.ldst
    renameMapTable.io.mapReqs(i).lrs1 := io.fetchPacket.bits.uops(i).bits.lrs1
    renameMapTable.io.mapReqs(i).lrs2 := io.fetchPacket.bits.uops(i).bits.lrs2
    decData.bits(i).valid             := io.fetchPacket.bits.uops(i).valid && !uopFireReg(i)
    decData.bits(i).bits              := decoder.io.resp(i)
    decData.bits(i).bits.stalePdst    := renameMapTable.io.mapResps(i).stalePdst
    decData.bits(i).bits.prs1         := renameMapTable.io.mapResps(i).prs1
    decData.bits(i).bits.prs2         := renameMapTable.io.mapResps(i).prs2
  }

  val decToRen = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  PipeConnect(Some(flush), decData, decToRen)

  uopFire := uopFireReg | (Fill(coreWidth, decData.fire) & VecInit(decData.bits.map(_.valid)).asUInt)

  // rename
  val renData      = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  val renDataFires = Wire(Vec(coreWidth, Bool()))
  renData.valid := decToRen.valid && renDataFires.reduce(_ || _)
  for (i <- 0 until coreWidth) {
    renData.bits(i).valid                 := decToRen.bits(i).valid
    renData.bits(i).bits                  := decToRen.bits(i).bits
    renData.bits(i).bits.pdst             := renameFreeList.io.allocPregs(i).bits
    renameFreeList.io.allocPregs(i).ready := renData.bits(i).valid && renData.bits(i).bits.ldst =/= 0.U && renData.fire
    renDataFires(i)                       := !renData.bits(i).valid || renameFreeList.io.allocPregs(i).valid || renData.bits(i).bits.ldst === 0.U
    for (j <- 0 until i) {
      when(renData.bits(j).valid) {
        when(renData.bits(j).bits.ldst === renData.bits(i).bits.ldst) {
          renData.bits(i).bits.stalePdst := renData.bits(j).bits.pdst
        }
        when(renData.bits(j).bits.ldst === renData.bits(i).bits.lrs1) {
          renData.bits(i).bits.prs1 := renData.bits(j).bits.pdst
        }
        when(renData.bits(j).bits.ldst === renData.bits(i).bits.lrs2) {
          renData.bits(i).bits.prs2 := renData.bits(j).bits.pdst
        }
      }
    }
    renameMapTable.io.renRemapReqs(i).valid := renData.fire && renData.bits(i).valid
    renameMapTable.io.renRemapReqs(i).ldst  := renData.bits(i).bits.ldst
    renameMapTable.io.renRemapReqs(i).pdst  := renData.bits(i).bits.pdst
  }

  val renToDis = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  PipeConnect(Some(flush), renData, renToDis)

  // dispatch

  // issue
}
