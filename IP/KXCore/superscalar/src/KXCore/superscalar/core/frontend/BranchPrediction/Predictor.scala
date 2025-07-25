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
  // Was the cfi mispredicted from the original prediction?
  val cfiMispredicted = Bool()
  // Was the cfi a br?
  val cfiIsBr = Bool()
  // Was the cfi a b/bl?
  val cfiIsB = Bool()
  // Was the cfi a jirl?
  val cfiIsJirl = Bool()

  // val ghist = new GlobalHistory
  // val lhist = Vec(nBanks, UInt(localHistoryLength.W))

  // What did this CFI jump to?
  val target = UInt(vaddrWidth.W)

  val meta = new Bundle {
    val bimMeta = UInt(2.W)
    val btbMeta = UInt(log2Ceil(params.frontendParams.btbParams.nWays).W)
  }
}

class BranchPredictor(implicit params: CoreParameters) extends Module {
  import params.commonParams.{vaddrWidth}
  import params.frontendParams._
  val io = IO(new Bundle {
    val flush = Input(new Bundle {
      val stage1 = Bool()
      val stage2 = Bool()
    })
    val req = new Bundle {
      val stage0 = Vec(2, Flipped(Decoupled(UInt(vaddrWidth.W))))
      val stage1 = Vec(3, Flipped(Decoupled(UInt(vaddrWidth.W))))
    }
    val resp = new Bundle {
      val stage1 = Decoupled(Vec(fetchWidth, new BranchPrediction))
      val stage2 = Decoupled(Vec(fetchWidth, new BranchPrediction))
    }
    val update = Flipped(Valid(new BranchPredictionUpdate))
  })

  val faubtb = Module(new FAMicroBTB)
  val btb    = Module(new BTB)
  val bim    = Module(new BIM)

  btb.io.flush := io.flush.stage1
  bim.io.flush := io.flush.stage1

  faubtb.io.update := io.update
  btb.io.update    := io.update
  bim.io.update    := io.update

  btb.io.req.stage0 <> io.req.stage0(0)
  bim.io.req.stage0 <> io.req.stage0(1)

  faubtb.io.req     <> io.req.stage1(0)
  btb.io.req.stage1 <> io.req.stage1(1)
  bim.io.req.stage1 <> io.req.stage1(2)
  io.resp.stage1    <> faubtb.io.resp

  val stage2Resp = WireDefault(0.U.asTypeOf(io.resp.stage2.cloneType))
  stage2Resp.valid  := btb.io.resp.valid && bim.io.resp.valid
  btb.io.resp.ready := stage2Resp.ready
  bim.io.resp.ready := stage2Resp.ready
  stage2Resp.bits   := faubtb.io.resp
  for (i <- 0 until fetchWidth) {
    stage2Resp.bits(i).taken := bim.io.resp.bits.pred(i).taken
    when(btb.io.resp.bits.meta.hits(i)) {
      stage2Resp.bits(i).isBr         := btb.io.resp.bits.pred(i).isBr
      stage2Resp.bits(i).isJmp        := btb.io.resp.bits.pred(i).isJmp
      stage2Resp.bits(i).target.valid := btb.io.resp.bits.pred(i).target.valid
      stage2Resp.bits(i).target.bits  := btb.io.resp.bits.pred(i).target.bits
    }
  }
  PipeConnect(None, Some(io.flush.stage2), stage2Resp, io.resp.stage2)
}
