package KXCore.common

import chisel3._
import chisel3.util._

class StageBundle[Req <: Bundle, Resp <: Bundle](reqNum: Int, respNum: Int, genReq: => Req, genResp: => Resp)(implicit params: CommonParameters)
    extends Bundle {
  val req  = Vec(reqNum, Flipped(Decoupled(genReq)))
  val resp = Vec(respNum, Decoupled(genResp))
}

object PipeConnect {
  def apply[T <: Data](
      init: Option[T],
      flush: Option[Bool],
      fanIn: DecoupledIO[T],
      fanOut: DecoupledIO[T]*,
  ): (T, UInt) = {
    require(!fanOut.isEmpty)
    val write  = fanIn.valid
    val finish = Cat(fanOut.map(_.ready))
    val bits   = if (init.nonEmpty) RegEnable(fanIn.bits, init.get, fanIn.fire) else RegEnable(fanIn.bits, fanIn.fire)
    val en     = RegInit(Fill(fanOut.length, init.nonEmpty.B))
    val nextEn = WireDefault(en & ~finish)
    en          := Mux(fanIn.ready, Fill(fanOut.length, write), nextEn)
    fanIn.ready := (nextEn === 0.U) || flush.getOrElse(false.B)
    for ((right, idx) <- fanOut.zipWithIndex) {
      right.bits  := bits
      right.valid := !flush.getOrElse(false.B) && en(idx)
    }
    (bits, en)
  }
}
