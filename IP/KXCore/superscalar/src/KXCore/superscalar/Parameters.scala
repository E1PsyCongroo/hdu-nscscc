package KXCore.superscalar

import chisel3._
import chisel3.util._
import scala.math._
import KXCore.common.CommonParameters
import KXCore.common.peripheral.{AXIBundleParameters, CacheParameters}

case class CoreParameters(
    fetchWidth: Int = 4, // Number of instructions fetched per request
    lregNum: Int = 32,
    pregNum: Int = 64,
    plWidth: Int = 1,    // Pipeline width
    robRowNum: Int = 64, // Number of rows in the ROB
    implicit val commonParams: CommonParameters = CommonParameters(),
    implicit val axiParams: AXIBundleParameters = AXIBundleParameters(),
    implicit val icacheParams: CacheParameters = CacheParameters(),
) {
  val lregWidth   = log2Ceil(lregNum)
  val pregWidth   = log2Ceil(pregNum)
  val robIdxWidth = log2Ceil(robRowNum)
}
