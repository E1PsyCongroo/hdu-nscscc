package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.peripheral._
import KXCore.superscalar._
import KXcore.superscalar.core.frontend._

class IPFUReq(implicit params: CoreParameters) extends Bundle {
  val npc = UInt(params.commonParams.vaddrWidth.W)
}

class IPFUResp(implicit param: CoreParameters) extends Bundle {
  val pc = UInt(param.commonParams.vaddrWidth.W)
}

class IPFU(implicit val params: CoreParameters) extends Module {
  import params.commonParams
  val io = IO(new StageBundle(1, 1, new IPFUReq, new IPFUResp) {
    def from = req(0)
    def to   = resp(0)
  })

  /* IO bind */
  io.from.ready := true.B

  io.to.valid   := io.from.valid
  io.to.bits.pc := io.from.bits.npc
}
