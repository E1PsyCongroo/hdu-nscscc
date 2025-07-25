package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import KXCore.superscalar._

class IDUIO(implicit params: CoreParameters) extends Bundle {}

class IDU(implicit params: CoreParameters) extends Module {
  // val io = IO(new IDUIO(params))

  // /* IO bind */
  // io.from.ready := io.to.ready

  // io.to.valid := io.from.valid
  // io.to.bits  := io.from.bits
}
