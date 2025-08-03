package KXCore.superscalar.core

import chisel3._
import chisel3.util._
import KXCore.common.peripheral._
import KXCore.common.Privilege._
import KXCore.superscalar._
import KXCore.superscalar.core.frontend._
import KXCore.superscalar.core.backend._
import KXCore.superscalar.core.backend.CSRAddr.DMW0

class DebugInfo(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, backendParams}
  import commonParams.{vaddrWidth, dataWidth, instWidth}
  import backendParams.{lregWidth, pregWidth}
  val wb_pc       = UInt(vaddrWidth.W)
  val wb_rf_wen   = UInt((dataWidth / 8).W)
  val wb_rf_wnum  = UInt(lregWidth.W)
  val wb_rf_wdata = UInt(dataWidth.W)
  val wb_inst     = UInt(instWidth.W)
}

class CoreIO(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, backendParams, axiParams}
  import commonParams.{vaddrWidth, dataWidth, instWidth}
  import backendParams.{lregWidth, pregWidth}
  val intrpt      = Input(UInt(8.W))
  val axi         = new AXIBundle(axiParams)
  val break_point = Input(Bool())
  val infor_flag  = Input(Bool())
  val reg_num     = Input(UInt(lregWidth.W))
  val ws_valid    = Output(Bool())
  val rf_rdata    = Output(UInt(dataWidth.W))
  val debug0      = Output(new DebugInfo)
}

class Core(implicit params: CoreParameters) extends Module {
  import params.{commonParams}
  val io = IO(new CoreIO)

  val tlb      = Module(new TLB)
  val frontend = Module(new FrontEnd)
  val backend  = Module(new BackEnd)

  tlb.io.mode.da     := true.B
  tlb.io.mode.pg     := false.B
  tlb.io.mode.dmw(0) := 0.U.asTypeOf(new KXCore.common.peripheral.DMW)
  tlb.io.mode.dmw(1) := 0.U.asTypeOf(new KXCore.common.peripheral.DMW)
  tlb.io.mode.matf   := 1.U
  tlb.io.mode.matd   := 1.U

  tlb.io.transReq0         := frontend.io.itlbReq
  tlb.io.transReq0.asid    := 0.U
  tlb.io.transReq0.isWrite := false.B
  tlb.io.transReq0.plv     := PLV.PLV_0.asUInt
  tlb.io.transReq1         := backend.io.dtlbReq
  tlb.io.transReq0.asid    := 0.U
  tlb.io.transReq0.plv     := PLV.PLV_0.asUInt
  tlb.io.cmd_in            := DontCare

  io.axi                        <> frontend.io.axi
  frontend.io.icacheReq.valid   := false.B
  frontend.io.icacheReq.bits    := DontCare
  frontend.io.itlbResp          := tlb.io.transResp0
  frontend.io.fetchPacket.ready := backend.io.fetchPacket.ready
  frontend.io.getPC(0).ftqIdx   := backend.io.getPC(0).ftqIdx
  frontend.io.getPC(1).ftqIdx   := backend.io.getPC(1).ftqIdx
  frontend.io.getPC(2).ftqIdx   := backend.io.getPC(2).ftqIdx
  frontend.io.commit.valid      := backend.io.commit.valid
  frontend.io.commit.bits       := backend.io.commit.bits

  backend.io.axi               := DontCare
  backend.io.axi.r.valid       := false.B
  backend.io.axi.b.valid       := false.B
  backend.io.dtlbResp          := tlb.io.transResp1
  backend.io.fetchPacket.valid := frontend.io.fetchPacket.valid
  backend.io.fetchPacket.bits  := frontend.io.fetchPacket.bits
  backend.io.getPC(0).info     := frontend.io.getPC(0).info
  backend.io.getPC(1).info     := frontend.io.getPC(1).info
  backend.io.getPC(2).info     := frontend.io.getPC(2).info

  io.ws_valid := false.B
  io.rf_rdata := 0.U
  io.debug0   := 0.U.asTypeOf(new DebugInfo)

  if (params.debug) {
    // val difftestInstrCommit = Module(new DifftestInstrCommit)
    // val difftestGRegState   = Module(new DifftestGRegState)

    // difftestInstrCommit.io.clock  := clock.asBool
    // difftestInstrCommit.io.coreid := 0.U
    // difftestInstrCommit.io.index :=
    dontTouch(backend.io.debug)
  }
}
