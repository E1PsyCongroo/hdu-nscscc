package KXCore.superscalar.core

import chisel3._
import chisel3.util._
import KXCore.common.peripheral._
import KXCore.superscalar._
import KXCore.superscalar.core.frontend._

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

  val frontend = Module(new FrontEnd)
  val tlb      = Module(new TLB)
  io.axi                      <> frontend.io.axi
  frontend.io.icacheReq.valid := false.B
  frontend.io.icacheReq.bits  := DontCare
  tlb.io.transReq             := frontend.io.itlbReq
  frontend.io.itlbResp        := tlb.io.transResp
  frontend.io.redirect.valid  := false.B
  frontend.io.redirect.bits   := DontCare
  frontend.io.brupdate.valid  := false.B
  frontend.io.brupdate.bits   := DontCare
  frontend.io.commit.valid    := false.B
  frontend.io.commit.bits     := DontCare

  io.ws_valid    := false.B
  io.rf_rdata    := 0.U
  io.debug0      := 0.U.asTypeOf(new DebugInfo)
  tlb.io.mode    := DontCare
  tlb.io.mode.da := true.B
  tlb.io.mode.pg := false.B
}
