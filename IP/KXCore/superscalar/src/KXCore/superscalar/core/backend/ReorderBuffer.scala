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
  val brInfo = new BrUpdateInfo
}
class RoBEntry(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, frontendParams, backendParams}
  import frontendParams.{ftqIdxWidth}
  import backendParams.{coreWidth, robRowNum, robIdxWidth, retireWidth, lregWidth, pregWidth, wbPortNum}
  val uop    = new MicroOp
  val brInfo = new BrUpdateInfo
}

/** 优化方案: 一行一个brUpdateInfo 记录所有的Br指令，同一行的 ftqidx 必须相等，入队时需要记录cfiIdx
  */
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
    val commit = Vec(retireWidth, Valid(new RoBEntry))
  })

  val flush = Wire(Bool())

  // val exception = RegInit(Valid(new MicroOp))

  val rob_head     = RegInit(0.U(log2Ceil(robRowNum).W))
  val rob_head_lsb = RegInit(0.U((1 max log2Ceil(coreWidth)).W))
  val rob_head_idx = if (coreWidth == 1) rob_head else Cat(rob_head, rob_head_lsb)

  val rob_tail = RegInit(0.U(log2Ceil(robRowNum).W))

  val next_rob_head = WireInit(rob_head)
  rob_head := next_rob_head

  val full  = Wire(Bool())
  val empty = Wire(Bool())

  val will_commit = Wire(Vec(coreWidth, Bool()))
  val can_commit  = Wire(Vec(coreWidth, Bool()))

  val rob_alloc_fires = Wire(Vec(coreWidth, Bool()))
  val rob_head_vals   = Wire(Vec(coreWidth, Bool())) // are the instructions at the head valid?

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
    val ftqIdx    = UInt(ftqIdxWidth.W)
    val ldst      = UInt(lregWidth.W)
    val pdst      = UInt(pregWidth.W)
    val stalePdst = UInt(pregWidth.W)
  }
  def compact_to_uop(compact: RoBCompactUop, uop: MicroOp): MicroOp = {
    val out = WireInit(uop)
    out.idx       := compact.idx
    out.ftqIdx    := compact.ftqIdx
    out.ldst      := compact.ldst
    out.pdst      := compact.pdst
    out.stalePdst := compact.stalePdst
    out
  }
  def uop_to_compact(uop: MicroOp): RoBCompactUop = {
    val out = Wire(new RoBCompactUop)
    out.idx       := uop.idx
    out.ftqIdx    := uop.ftqIdx
    out.ldst      := uop.ldst
    out.pdst      := uop.pdst
    out.stalePdst := uop.stalePdst
    out
  }
  for (w <- 0 until coreWidth) {
    def MatchBank(bank_idx: UInt): Bool = (bank_idx === w.U)

    // one bank

    val rob_val         = RegInit(VecInit(Seq.fill(robRowNum) { false.B }))
    val rob_uop         = Reg(Vec(robRowNum, new MicroOp()))
    val rob_compact_uop = Reg(Vec(coreWidth, new RoBCompactUop))
    val rob_brInfo      = Reg(Vec(robRowNum, new BrUpdateInfo))
    val rob_bsy         = Reg(Vec(robRowNum, Bool()))
    val rob_exception   = Reg(Vec(robRowNum, Bool()))

    // -----------------------------------------------
    // Dispatch: Add Entry to ROB

    rob_alloc_fires(w) := io.alloc(w).valid && io.alloc(w).ready
    when(rob_alloc_fires(w)) {
      rob_val(rob_tail)         := true.B
      rob_bsy(rob_tail)         := io.alloc(w).uop.busy
      rob_compact_uop(rob_tail) := uop_to_compact(io.alloc(w).uop)
      rob_uop(rob_tail)         := io.alloc(w).uop
      rob_exception(rob_tail)   := io.alloc(w).uop.exception
      assert(rob_val(rob_tail) === false.B, "[rob] overwriting a valid entry.")
    }

    val isFirst = if (w == 0) true.B else !VecInit((0 until w).map(i => io.alloc(i).valid)).reduce(_ || _)
    io.alloc(w).idx   := Mux((coreWidth == 1).B, rob_tail, Cat(rob_tail, w.U(log2Ceil(coreWidth).W)))
    io.alloc(w).valid := !full && (!io.alloc(w).uop.isUnique || (empty && isFirst))

    // -----------------------------------------------
    // Writeback

    for (i <- 0 until wbPortNum) {
      val wb_resp = io.write(i)
      val wb_uop  = wb_resp.bits.uop
      val row_idx = GetRowIdx(wb_uop.robIdx)
      when(wb_resp.valid && MatchBank(GetBankIdx(wb_uop.robIdx))) {
        rob_bsy(row_idx)    := false.B
        rob_brInfo(row_idx) := wb_resp.bits.brInfo
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

    io.commit(w).valid       := will_commit(w)
    io.commit(w).bits.uop    := compact_to_uop(rob_compact_uop(w), rob_uop(rob_head))
    io.commit(w).bits.brInfo := rob_brInfo(w)

    when(will_commit(w)) {
      rob_val(rob_head) := false.B
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

  var block_commit  = false.B
  var commit_ftqIdx = 0.U
  for (w <- 0 until coreWidth) {
    will_commit(w) := can_commit(w) && !block_commit
    block_commit = io.commit(w).bits.brInfo.cfiType =/= CFIType.CFI_NONE.asUInt || block_commit
  }

  // -----------------------------------------------
  // ROB Head Logic

  val r_partial_row = RegInit(false.B)

  val finished_committing_row =
    (io.commit.map(_.valid).reduce(_ || _)) &&
      ((will_commit.asUInt ^ rob_head_vals.asUInt) === 0.U) &&
      !(r_partial_row && rob_head === rob_tail)

  when(finished_committing_row) {
    next_rob_head := WrapInc(rob_head, robRowNum)
    rob_head_lsb  := 0.U
  }.elsewhen(flush) {
    rob_head_lsb := 0.U
  }.otherwise {
    rob_head_lsb := OHToUInt(PriorityEncoderOH(rob_head_vals.asUInt))
  }

  // -----------------------------------------------
  // ROB Tail Logic

  when(rob_alloc_fires(coreWidth - 1)) {
    rob_tail      := WrapInc(rob_tail, robRowNum)
    r_partial_row := false.B
  }.elsewhen(io.alloc.map(_.valid).reduce(_ || _)) {
    r_partial_row := true.B
  }

  // -----------------------------------------------
  // Full/Empty Logic

  full  := (rob_head === rob_tail) && (rob_head_vals.reduce(_ || _))
  empty := (rob_head === rob_tail) && (rob_head_vals.asUInt === 0.U)

  // -----------------------------------------------
  // Flush Logic

  flush := io.commit.map(i => i.valid && i.bits.brInfo.mispredict).reduce(_ || _)

  when(flush) {
    rob_head      := 0.U
    rob_head_lsb  := 0.U
    rob_tail      := 0.U
    r_partial_row := false.B
  }

  // -----------------------------------------------
  // -----------------------------------------------
}
