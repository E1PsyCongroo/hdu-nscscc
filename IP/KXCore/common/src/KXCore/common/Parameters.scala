package KXCore.common

import chisel3._
import chisel3.util._

case class CommonParameters(
    dataWidth: Int = 32,
    instWidth: Int = 32,
    vaddrWidth: Int = 32,
    paddrWidth: Int = 32,
    pcReset: BigInt = 0x1c00_0000L,
    debug: Boolean = true,
) {
  require(vaddrWidth == 32)
  require(paddrWidth >= vaddrWidth)
}
