package KXCore.superscalar

import chisel3._
import chisel3.util._
import scala.math._
import KXCore.common.CommonParameters
import KXCore.common.peripheral.{AXIBundleParameters, CacheParameters}

case class FAMicroBTBParameters(
    nWays: Int = 16,
    tagWidth: Int = 12,
    useDualEntries: Boolean = true,
) {
  require(isPow2(nWays))
}

case class BIMParams(
    nSets: Int = 2048,
) {
  require(isPow2(nSets))
}

case class BTBParams(
    nSets: Int = 128,
    nWays: Int = 2,
    offsetWidth: Int = 16,
    extendedNSets: Int = 128,
) {
  require(isPow2(nSets))
  require(isPow2(extendedNSets) || extendedNSets == 0)
  require(extendedNSets <= nSets)
  require(extendedNSets >= 1)
}

case class FrontendParmaeters(
    fetchWidth: Int = 4, // Number of instructions fetched per request
    fbNum: Int = 16,     // Number of entries in the fetch buffer
    ftqNum: Int = 32,    // Number of entries in the fetch target queue
    rasNum: Int = 16,    // Number of entries in the return address stack
    faubtbParams: FAMicroBTBParameters = FAMicroBTBParameters(),
    bimParams: BIMParams = BIMParams(),
    btbParams: BTBParams = BTBParams(),
) {
  require(isPow2(fetchWidth))
}

case class BackendParameters(
    coreWidth: Int = 2, // Number of instructions decoded per cycle
    lregNum: Int = 32,
    pregNum: Int = 64,
    robRowNum: Int = 64, // Number of rows in the ROB
) {
  val lregWidth   = log2Ceil(lregNum)
  val pregWidth   = log2Ceil(pregNum)
  val robIdxWidth = log2Ceil(robRowNum)
}

case class CoreParameters()(
    implicit val commonParams: CommonParameters = CommonParameters(),
    implicit val axiParams: AXIBundleParameters = AXIBundleParameters(),
    implicit val icacheParams: CacheParameters = CacheParameters(),
    implicit val frontendParams: FrontendParmaeters = FrontendParmaeters(),
    implicit val backendParams: BackendParameters = BackendParameters(),
) {
  val fetchBytes = frontendParams.fetchWidth * commonParams.instBytes
  def fetchIdx(addr: UInt): UInt = {
    addr >> log2Ceil(fetchBytes)
  }
  def fetchAlign(addr: UInt) = addr & ~(fetchBytes - 1).U(commonParams.vaddrWidth.W)
  def nextFetch(addr: UInt) = {
    fetchAlign(addr) + fetchBytes.U
  }
  def fetchMask(addr: UInt) = {
    val idx = addr(log2Ceil(fetchBytes) - 1, log2Ceil(commonParams.instBytes))
    ((fetchBytes - 1).U << idx)(frontendParams.fetchWidth - 1, 0)
  }

}
