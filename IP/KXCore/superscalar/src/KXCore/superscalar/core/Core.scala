package KXCore.superscalar.core

import chisel3._
import chisel3.util._
import KXCore.common.peripheral._
import KXCore.superscalar._

// class DebugInfo(implicit params: CoreParameters) extends Bundle {
//   val wb_pc       = UInt(params.vaddrWidth.W)
//   val wb_rf_wen   = UInt((params.dataWidth / 8).W)
//   val wb_rf_wnum  = UInt(params.lregWidth.W)
//   val wb_rf_wdata = UInt(params.dataWidth.W)
//   val wb_inst     = UInt(params.instWidth.W)
// }

// class CoreIO(implicit params: CoreParameters) extends Bundle {
//   val intrpt      = Input(UInt(8.W))
//   val axi         = new AXIBundle(params.axiParams)
//   val break_point = Input(Bool())
//   val infor_flag  = Input(Bool())
//   val reg_num     = Input(UInt(params.lregWidth.W))
//   val ws_valid    = Output(Bool())
//   val rf_rdata    = Output(UInt(params.dataWidth.W))
//   val debug0      = Output(new DebugInfo)
// }

// class Core(implicit params: CoreParameters) extends Module {
//   val io = IO(new CoreIO)

//   val frontend = Module(new FrontEnd)

//   io.axi <> frontend.io.axi

//   frontend.io.debug.ready := true.B
//   dontTouch(frontend.io.debug)

//   io.ws_valid := false.B
//   io.rf_rdata := 0.U
//   io.debug0   := 0.U.asTypeOf(new DebugInfo)
// }
