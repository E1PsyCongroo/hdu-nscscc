package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core._
import KXCore.superscalar.core.frontend._

class RoBWrite(implicit params: CoreParameters) extends Bundle {
  val uop    = new MicroOp
  val brInfo = Valid(new BrUpdateInfo)
}
class RoBEntry(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, frontendParams, backendParams}
  import frontendParams.{ftqIdxWidth}
  import backendParams.{coreWidth, robRowNum, robIdxWidth, retireWidth, lregWidth, pregWidth, wbPortNum}
  val valids = Vec(retireWidth, Bool())
  val uop    = Vec(retireWidth, new MicroOp)
  val ftqIdx = UInt(ftqIdxWidth.W)
  val brInfo = Valid(new BrUpdateInfo)
}

class ReorderBuffer(implicit params: CoreParameters) extends Module {
  import params.{commonParams, frontendParams, backendParams}
  import frontendParams.{ftqIdxWidth}
  import backendParams.{coreWidth, robNum, robRowNum, robIdxWidth, retireWidth, lregWidth, pregWidth, wbPortNum}
  val io = IO(new Bundle {
    val alloc = Vec(
      coreWidth,
      new Bundle {
        val ready = Input(Bool())
        val uop   = Input(new MicroOp)
        val idx   = Output(UInt(robIdxWidth.W))
        val valid = Output(Bool())
      },
    )
    val write  = Vec(wbPortNum, Flipped(Valid(new RoBWrite)))
    val commit = new RoBEntry
  })

  val flush = Wire(Bool())

  // val exception = RegInit(Valid(new MicroOp))

  val rob_head = RegInit(0.U(log2Ceil(robRowNum).W))
  val rob_tail = RegInit(0.U(log2Ceil(robRowNum).W))

  val next_rob_head = WireInit(rob_head)
  rob_head := next_rob_head

  val full  = Wire(Bool())
  val empty = Wire(Bool())

  val will_commit = Wire(Vec(coreWidth, Bool()))
  val can_commit  = Wire(Vec(coreWidth, Bool()))

  val rob_head_vals = Wire(Vec(coreWidth, Bool())) // are the instructions at the head valid?

  def GetRowIdx(rob_idx: UInt): UInt = {
    if (coreWidth == 1) return rob_idx
    else return rob_idx(robIdxWidth - 1, log2Ceil(coreWidth))
  }
  def GetBankIdx(rob_idx: UInt): UInt = {
    if (coreWidth == 1) { return 0.U }
    else { return rob_idx(log2Ceil(coreWidth) - 1, 0).asUInt }
  }

  class RoBCompactUop extends Bundle {
    val idx       = UInt(log2Ceil(frontendParams.fetchWidth).W)
    val ldst      = UInt(lregWidth.W)
    val pdst      = UInt(pregWidth.W)
    val stalePdst = UInt(pregWidth.W)
  }
  def compact_to_uop(compact: RoBCompactUop, uop: MicroOp): MicroOp = {
    val out = WireInit(uop)
    out.idx       := compact.idx
    out.ldst      := compact.ldst
    out.pdst      := compact.pdst
    out.stalePdst := compact.stalePdst
    out
  }
  def uop_to_compact(uop: MicroOp): RoBCompactUop = {
    val out = Wire(new RoBCompactUop)
    out.idx       := uop.idx
    out.ldst      := uop.ldst
    out.pdst      := uop.pdst
    out.stalePdst := uop.stalePdst
    out
  }

  val rob_row_ftq    = Reg(Vec(robRowNum, UInt(ftqIdxWidth.W)))
  val rob_row_brInfo = Reg(Vec(robRowNum, Valid(new BrUpdateInfo)))
  for (w <- 0 until coreWidth) {
    def MatchBank(bank_idx: UInt): Bool = (bank_idx === w.U)

    // one bank

    val rob_val         = RegInit(VecInit(Seq.fill(robRowNum) { false.B }))
    val rob_uop         = Reg(Vec(robRowNum, new MicroOp()))
    val rob_compact_uop = Reg(Vec(robRowNum, new RoBCompactUop))
    val rob_bsy         = Reg(Vec(robRowNum, Bool()))
    val rob_exception   = Reg(Vec(robRowNum, Bool()))

    // -----------------------------------------------
    // Dispatch: Add Entry to ROB

    when(io.alloc(w).valid && io.alloc(w).ready) {
      rob_val(rob_tail)              := true.B
      rob_bsy(rob_tail)              := io.alloc(w).uop.busy
      rob_compact_uop(rob_tail)      := uop_to_compact(io.alloc(w).uop)
      rob_uop(rob_tail)              := io.alloc(w).uop
      rob_exception(rob_tail)        := io.alloc(w).uop.exception
      rob_row_ftq(rob_tail)          := io.alloc(w).uop.ftqIdx
      rob_row_brInfo(rob_tail).valid := false.B
      assert(rob_val(rob_tail) === false.B, "[rob] overwriting a valid entry.")
    }

    val isFirst = if (w == 0) true.B else !VecInit((0 until w).map(i => io.alloc(i).valid)).reduce(_ || _)
    io.alloc(w).idx   := Mux((coreWidth == 1).B, rob_tail, Cat(rob_tail, w.U(log2Ceil(coreWidth).W)))
    io.alloc(w).valid := !full && (!io.alloc(w).uop.isUnique || (empty && isFirst))

    // -----------------------------------------------
    // Writeback

    for (i <- 0 until wbPortNum) {
      val wb_resp    = io.write(i)
      val wb_uop     = wb_resp.bits.uop
      val wb_brInfo  = wb_resp.bits.brInfo
      val row_idx    = GetRowIdx(wb_uop.robIdx)
      val rob_brInfo = rob_row_brInfo(row_idx)
      when(wb_resp.valid && MatchBank(GetBankIdx(wb_uop.robIdx))) {
        rob_bsy(row_idx) := false.B
        when(wb_brInfo.valid) {
          rob_brInfo.valid := true.B
        }
        when(
          !rob_brInfo.valid || !rob_brInfo.bits.cfiIdx.valid ||
            (wb_brInfo.bits.cfiIdx.valid && wb_brInfo.bits.cfiIdx.bits < rob_brInfo.bits.cfiIdx.bits),
        ) {
          rob_brInfo.bits := wb_brInfo.bits
        }
      }
    }

    // // -----------------------------------------------------
    // // Exceptions
    // // (the cause bits are compressed and stored elsewhere)

    // when(io.lxcpt.valid && MatchBank(GetBankIdx(io.lxcpt.bits.uop.rob_idx))) {
    //   rob_exception(GetRowIdx(io.lxcpt.bits.uop.rob_idx)) := true.B
    //   when(io.lxcpt.bits.cause =/= MINI_EXCEPTION_MEM_ORDERING) {
    //     // In the case of a mem-ordering failure, the failing load will have been marked safe already.
    //     assert(rob_unsafe(GetRowIdx(io.lxcpt.bits.uop.rob_idx)), "An instruction marked as safe is causing an exception")
    //   }
    // }
    // when(io.csr_replay.valid && MatchBank(GetBankIdx(io.csr_replay.bits.uop.rob_idx))) {
    //   rob_exception(GetRowIdx(io.csr_replay.bits.uop.rob_idx)) := true.B
    // }
    // can_throw_exception(w) := rob_val(rob_head) && rob_exception(rob_head)

    // -----------------------------------------------
    // Commit

    can_commit(w) := rob_val(rob_head) && !rob_bsy(rob_head)

    io.commit.valids(w) := will_commit(w)
    io.commit.uop(w)    := compact_to_uop(rob_compact_uop(rob_head), rob_uop(rob_head))
    io.commit.ftqIdx    := rob_row_ftq(rob_head)
    io.commit.brInfo    := rob_row_brInfo(rob_head)

    when(will_commit(w)) {
      rob_val(rob_head)              := false.B
      rob_row_brInfo(rob_head).valid := false.B
    }

    // -----------------------------------------------
    // Outputs

    rob_head_vals(w) := rob_val(rob_head)

    // -----------------------------------------------
    // Flush

    when(flush) {
      for (i <- 0 until robRowNum) {
        rob_val(i) := false.B
      }
    }

  } // for (w <- 0 until coreWidth)

  // -----------------------------------------------
  // Commit Logic

  var block_commit = false.B
  var commit_count = 0.U
  for (w <- 0 until coreWidth) {
    will_commit(w) := can_commit(w) && !block_commit
    commit_count = Mux(will_commit(w), commit_count + 1.U, commit_count)
    block_commit = (io.commit.brInfo.valid && io.commit.brInfo.bits.mispredict) ||
      (if (retireWidth != coreWidth) { commit_count === retireWidth.U }
       else false.B) || block_commit
  }

  // -----------------------------------------------
  // ROB Head Logic

  val finished_committing_row =
    (io.commit.valids.reduce(_ || _)) &&
      ((will_commit.asUInt ^ rob_head_vals.asUInt) === 0.U)

  when(finished_committing_row) {
    next_rob_head := WrapInc(rob_head, robRowNum)
  }

  // -----------------------------------------------
  // ROB Tail Logic

  when(!full && io.alloc.map(_.ready).reduce(_ || _)) {
    rob_tail := WrapInc(rob_tail, robRowNum)
  }

  // -----------------------------------------------
  // Full/Empty Logic

  full  := (rob_head === rob_tail) && (rob_head_vals.reduce(_ || _))
  empty := (rob_head === rob_tail) && (rob_head_vals.asUInt === 0.U)

  // -----------------------------------------------
  // Flush Logic

  flush := io.commit.valids.reduce(_ || _) && io.commit.brInfo.valid && io.commit.brInfo.bits.mispredict

  when(flush) {
    rob_head := 0.U
    rob_tail := 0.U
  }

  // -----------------------------------------------
  // -----------------------------------------------
}
