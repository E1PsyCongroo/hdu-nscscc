package KXCore.superscalar.core

import chisel3._
import chisel3.util._
import KXCore.common.peripheral._
import KXCore.superscalar._
import frontend._

// class FrontEndIO(implicit params: CoreParameters) extends Bundle {
//   val axi   = new AXIBundle(params.axiParams)
//   val debug = Irrevocable(new IFUTo)
// }

// class FrontEnd(implicit params: CoreParameters) extends Module {
//   val io = IO(new FrontEndIO)

//   val ipfu = Module(new IPFU)
//   val ifu  = Module(new IFU)
//   PipeConnect(ipfu.io.to, ifu.io.from, ifu.io.to.fire, None, Some(true.B))

//   ipfu.io.from.valid := true.B
//   ipfu.io.from.bits  := Mux(reset.asBool, params.pcReset.U, ifu.io.from.bits.pc + 4.U)

//   io.axi   <> ifu.io.axi
//   io.debug <> ifu.io.to
// }
