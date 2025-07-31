package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.superscalar._

// A branch prediction for a single instruction
class BranchPrediction(implicit params: CoreParameters) extends Bundle {
  // Is this a branch?
  val isBr = Bool()
  // Is this a B/BL?
  val isJmp = Bool()
  // If this is a cfi, do we take it?
  val taken = Bool()
  // What is the target of his branch/jump? Do we know the target?
  val target = Valid(UInt(params.commonParams.vaddrWidth.W))
}

// A branch prediction for a entire fetch-width worth of instructions
// This is typically merged from individual predictions from the banked
// predictor
class BranchPredictionBundle(implicit params: CoreParameters) extends Bundle {
  val pc    = UInt(params.commonParams.vaddrWidth.W)
  val preds = Vec(params.frontendParams.fetchWidth, new BranchPrediction)
}

// A branch update for a fetch-width worth of instructions
class BranchPredictionUpdate(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, frontendParams}
  import commonParams.{vaddrWidth}
  import frontendParams._
  val fetchPC = UInt(vaddrWidth.W)
  // Which CFI was taken/mispredicted (if any)
  val cfiIdx = UInt(log2Ceil(fetchWidth).W)
  // Was the cfi taken?
  val cfiTaken = Bool()
  // Was the cfi a br?
  val cfiIsBr = Bool()
  // Was the cfi a b/bl?
  val cfiIsB = Bool()
  // Was the cfi a jirl?
  val cfiIsJirl = Bool()

  // What did this CFI jump to?
  val target = UInt(vaddrWidth.W)

  val meta = new Bundle {
    val bim = Vec(params.frontendParams.fetchWidth, UInt(2.W))
    val btb = UInt(log2Ceil(params.frontendParams.btbParams.nWays).W)
  }
}
