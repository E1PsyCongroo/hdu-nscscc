package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core.frontend._

class RoBWrite(implicit params: CoreParameters) extends Bundle {}
class RoBEntry(implicit params: CoreParameters) extends Bundle {}

class ReorderBuffer(implicit params: CoreParameters) extends Module {
  import params.{commonParams, frontendParams, backendParams}
  import frontendParams.{ftqIdxWidth}
  import backendParams.{coreWidth, robRowNum, robIdxWidth, retireWidth, lregWidth, pregWidth}
  val io = IO(new Bundle {
    val alloc = Vec(
      coreWidth,
      new Bundle {
        val valid = Input(Bool())
        val uop   = Input(new MicroOp)
        val idx   = Output(UInt(robIdxWidth.W))
        val ready = Output(Bool())
      },
    )
    // val write  = Valid(new RoBWrite)
    // val commit = Vec(retireWidth, Decoupled(new RoBEntry))
    // val readPC = Flipped(Decoupled(UInt(robIdxWidth.W)))
    // val getPC  = Flipped(new GetPCFromFtqIO)
  })

  val brUpdateInfo = Reg(new BrUpdateInfo)
  // val exception = RegInit(Valid(new MicroOp))

  val rob_head     = RegInit(0.U(log2Ceil(robRowNum).W))
  val rob_head_lsb = RegInit(0.U((1 max log2Ceil(coreWidth)).W))
  val rob_head_idx = if (coreWidth == 1) rob_head else Cat(rob_head, rob_head_lsb)

  val rob_tail = RegInit(0.U(log2Ceil(robRowNum).W))

  val next_rob_head = WireInit(rob_head)
  rob_head := next_rob_head

  val full  = Wire(Bool())
  val empty = Wire(Bool())

  val rob_alloc_fires = Wire(Vec(coreWidth, Bool()))
  val rob_head_vals   = Wire(Vec(coreWidth, Bool())) // are the instructions at the head valid?

  def GetRowIdx(rob_idx: UInt): UInt = {
    if (coreWidth == 1) return rob_idx
    else return rob_idx >> log2Ceil(coreWidth).U
  }
  def GetBankIdx(rob_idx: UInt): UInt = {
    if (coreWidth == 1) { return 0.U }
    else { return rob_idx(log2Ceil(coreWidth) - 1, 0).asUInt }
  }

  class RoBCompactUop extends Bundle {
    val ftqIdx    = UInt(ftqIdxWidth.W)
    val ldst      = UInt(lregWidth.W)
    val pdst      = UInt(pregWidth.W)
    val stalePdst = UInt(pregWidth.W)
  }
  def compact_to_uop(compact: RoBCompactUop, uop: MicroOp): MicroOp = {
    val out = WireInit(uop)
    out.ftqIdx    := compact.ftqIdx
    out.ldst      := compact.ldst
    out.pdst      := compact.pdst
    out.stalePdst := compact.stalePdst
    out
  }
  def uop_to_compact(uop: MicroOp): RoBCompactUop = {
    val out = Wire(new RoBCompactUop)
    out.ftqIdx    := uop.ftqIdx
    out.ldst      := uop.ldst
    out.pdst      := uop.pdst
    out.stalePdst := uop.stalePdst
    out
  }
  // More efficient rob uop storage in 1R1W masked SRAM
  val rob_compact_uop_mem   = SyncReadMem(robRowNum, Vec(coreWidth, new RoBCompactUop))
  val rob_compact_uop_wdata = VecInit(io.alloc.map(u => uop_to_compact(u.uop)))
  rob_compact_uop_mem.write(rob_tail, rob_compact_uop_wdata, rob_alloc_fires)
  val rob_compact_uop_rdata = rob_compact_uop_mem.read(next_rob_head)

  val will_not_empty = WireInit(false.B)
  for (w <- 0 until coreWidth) {
    def MatchBank(bank_idx: UInt): Bool = (bank_idx === w.U)

    // one bank
    val rob_val       = RegInit(VecInit(Seq.fill(robRowNum) { false.B }))
    val rob_bsy       = Reg(Vec(robRowNum, Bool()))
    val rob_exception = Reg(Vec(robRowNum, Bool()))

    // -----------------------------------------------
    // Dispatch: Add Entry to ROB

    rob_alloc_fires(w) := io.alloc(w).valid && io.alloc(w).ready
    when(rob_alloc_fires(w)) {
      will_not_empty          := true.B
      rob_val(rob_tail)       := true.B
      rob_bsy(rob_tail)       := io.alloc(w).uop.busy
      rob_exception(rob_tail) := io.alloc(w).uop.exception
      assert(rob_val(rob_tail) === false.B, "[rob] overwriting a valid entry.")
    }

    io.alloc(w).ready := !full && (!io.alloc(w).uop.isUnique || (empty && !will_not_empty))

    // // -----------------------------------------------
    // // Writeback

    // for (i <- 0 until numWakeupPorts) {
    //   val wb_resp = io.wb_resps(i)
    //   val wb_uop  = wb_resp.bits.uop
    //   val row_idx = GetRowIdx(wb_uop.rob_idx)
    //   when(wb_resp.valid && MatchBank(GetBankIdx(wb_uop.rob_idx))) {
    //     rob_bsy(row_idx)        := false.B
    //     rob_unsafe(row_idx)     := false.B
    //     rob_predicated(row_idx) := wb_resp.bits.predicated
    //     when(wb_resp.bits.fflags.valid) {
    //       assert(!rob_fflags(row_idx).valid)

    //       rob_fflags(row_idx).valid := true.B
    //       rob_fflags(row_idx).bits  := wb_resp.bits.fflags.bits

    //     }
    //   }
    // }

    // // Stores have a separate method to clear busy bits
    // for (clr_rob_idx <- io.lsu_clr_bsy) {
    //   when(clr_rob_idx.valid && MatchBank(GetBankIdx(clr_rob_idx.bits))) {
    //     val cidx = GetRowIdx(clr_rob_idx.bits)
    //     rob_bsy(cidx)    := false.B
    //     rob_unsafe(cidx) := false.B
    //     assert(rob_val(cidx) === true.B, "[rob] store writing back to invalid entry.")
    //     assert(rob_bsy(cidx) === true.B, "[rob] store writing back to a not-busy entry.")
    //   }
    // }
    // for (clr <- io.lsu_clr_unsafe) {
    //   when(clr.valid && MatchBank(GetBankIdx(clr.bits))) {
    //     val cidx = GetRowIdx(clr.bits)
    //     rob_unsafe(cidx) := false.B
    //   }
    // }

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

    // // -----------------------------------------------
    // // Commit

    // // Can this instruction commit? (the check for exceptions/rob_state happens later).
    // // Block commit if there is mispredict
    // can_commit(w) := rob_val(rob_head) && !(rob_bsy(rob_head)) && !io.csr_stall && !io.brupdate.b2.mispredict

    // // use the same "com_uop" for both rollback AND commit
    // // Perform Commit
    // io.commit.valids(w)      := will_commit(w)
    // io.commit.arch_valids(w) := will_commit(w) && !rob_predicated(rob_head)
    // io.commit.uops(w)        := compact_to_uop(rob_compact_uop_bypassed(w), rob_uop(rob_head))
    // io.commit.debug_insts(w) := rob_debug_inst_rdata(w)

    // // We unbusy branches in b1, but its easier to mark the taken/provider src in b2,
    // // when the branch might be committing
    // when(
    //   io.brupdate.b2.mispredict &&
    //     MatchBank(GetBankIdx(io.brupdate.b2.uop.rob_idx)) &&
    //     GetRowIdx(io.brupdate.b2.uop.rob_idx) === rob_head,
    // ) {
    //   io.commit.uops(w).debug_fsrc := BSRC_C
    //   io.commit.uops(w).taken      := io.brupdate.b2.taken
    // }

    // when(rob_state === s_rollback) {
    //   for (i <- 0 until numRobRows) {
    //     rob_val(i) := false.B
    //     rob_bsy(i) := false.B
    //   }
    // }

    // // -----------------------------------------------
    // // Kill speculated entries on branch mispredict
    // for (i <- 0 until numRobRows) {
    //   val br_mask = rob_uop(i).br_mask

    //   when(
    //     io.brupdate.b2.mispredict && (
    //       brupdate_b2_rob_clr_oh(i) ||
    //         (brupdate_b2_rob_row_oh(i) && brupdate_b2_rob_bank_clr_oh(w))
    //     ),
    //   ) {
    //     rob_val(i) := false.B
    //   }

    //   // //kill instruction if mispredict & br mask match
    //   // when (IsKilledByBranch(io.brupdate, false.B, br_mask))
    //   // {
    //   //   rob_val(i) := false.B
    //   // } .elsewhen (rob_val(i)) {
    //   //   // clear speculation bit even on correct speculation
    //   //   rob_uop(i).br_mask := GetNewBrMask(io.brupdate, br_mask)
    //   // }
    // }

    // // Debug signal to figure out which prediction structure
    // // or core resolved a branch correctly
    // when(
    //   io.brupdate.b2.mispredict &&
    //     MatchBank(GetBankIdx(io.brupdate.b2.uop.rob_idx)),
    // ) {
    //   rob_uop(GetRowIdx(io.brupdate.b2.uop.rob_idx)).debug_fsrc := BSRC_C
    //   rob_uop(GetRowIdx(io.brupdate.b2.uop.rob_idx)).taken      := io.brupdate.b2.taken
    // }

    // // -----------------------------------------------
    // // Commit
    // when(will_commit(w)) {
    //   rob_val(rob_head) := false.B
    // }

    // -----------------------------------------------
    // Outputs
    rob_head_vals(w) := rob_val(rob_head)
  } // for (w <- 0 until coreWidth)

  // -----------------------------------------------
  // ROB Tail Logic

  when(rob_alloc_fires(coreWidth - 1)) {
    rob_tail := WrapInc(rob_tail, robRowNum)
  }

  // -----------------------------------------------
  // Full/Empty Logic

  full  := (rob_head === rob_tail) && (rob_head_vals.reduce(_ || _))
  empty := (rob_head === rob_tail) && (rob_head_vals.asUInt === 0.U)

  // -----------------------------------------------
  // -----------------------------------------------
}
