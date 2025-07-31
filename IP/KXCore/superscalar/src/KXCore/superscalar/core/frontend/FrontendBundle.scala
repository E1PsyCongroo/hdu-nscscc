package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.Control._
import KXCore.common.Privilege._
import KXCore.common.peripheral._
import KXCore.common.utils._
import KXCore.superscalar._

class FetchBundle(implicit params: CoreParameters) extends Bundle {
  import params.commonParams.{vaddrWidth, instWidth}
  import params.frontendParams._
  val pc    = UInt(vaddrWidth.W)
  val npc   = UInt(vaddrWidth.W)
  val pcs   = Vec(fetchWidth, UInt(vaddrWidth.W))
  val insts = Vec(fetchWidth, UInt(instWidth.W))
  val mask  = UInt(fetchWidth.W) // mark which words are valid instructions

  val cfiIdx  = Valid(UInt(log2Ceil(fetchWidth).W))
  val cfiType = UInt(CFIType.getWidth.W)

  val ftqIdx = UInt(log2Ceil(ftqNum).W)

  val exception = new Bundle {}

  // val ghist = new GlobalHistory
  // val lhist = Vec(nBanks, UInt(localHistoryLength.W))

  // val xcpt_pf_if = Bool() // I-TLB miss (instruction fetch fault).
  // val xcpt_ae_if = Bool() // Access exception.

  // val bp_debug_if_oh = Vec(fetchWidth, Bool())
  // val bp_xcpt_if_oh  = Vec(fetchWidth, Bool())

  // val end_half = Valid(UInt(16.W))

  val bpuMeta = new Bundle {
    val bim = Vec(params.frontendParams.fetchWidth, UInt(2.W))
    val btb = UInt(log2Ceil(params.frontendParams.btbParams.nWays).W)
  }
}

class BrUpdateInfo(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, frontendParams}
  val taken  = Bool()
  val pcLow  = UInt(log2Ceil(params.fetchBytes).W)
  val target = UInt(commonParams.vaddrWidth.W)
}

class FetchBufferResp(implicit params: CoreParameters) extends Bundle {
  val uops = Vec(params.backendParams.coreWidth, Valid(new MicroOp()))
}

/** Bundle to add to the FTQ RAM and to be used as the pass in IO
  */
class FTQBundle(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, frontendParams}
  val taken   = Bool()
  val cfiType = UInt(CFIType.getWidth.W)
}

/** IO to provide a port for a FunctionalUnit to get the PC of an instruction. And for JIRL, the PC of the next instruction.
  */
class GetPCFromFtqIO(implicit params: CoreParameters) extends Bundle {
  val ftqIdx  = Input(UInt(log2Ceil(params.frontendParams.ftqNum).W))
  val entry   = Output(new FTQBundle)
  val fetchPC = Output(UInt(params.commonParams.vaddrWidth.W))
  val nextPC  = Valid(UInt(params.commonParams.vaddrWidth.W))
}
