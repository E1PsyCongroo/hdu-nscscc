package KXCore.superscalar

import chisel3._
import chisel3.util._
import KXCore.common.Control._

object IQType extends ChiselEnum {
  val IQT_INT     = Value(0.U)
  val IQT_MUL_DIV = Value(1.U)
  val IQT_MEM     = Value(2.U)
}

object FUType extends ChiselEnum {
  // bit mask, since a given execution pipeline may support multiple functional units
  val FUT_ALU    = Value(1.U)
  val FUT_BRANCH = Value(2.U)
  val FUT_MEM    = Value(4.U)
  val FUT_MUL    = Value(8.U)
  val FUT_DIV    = Value(16.U)
  val FUT_CSR    = Value(32.U)
}

/** MicroOp passing through the pipeline
  */
class MicroOp(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, icacheParams}
  val inst    = UInt(commonParams.instWidth.W)
  val iq_type = UInt(IQType.getWidth.W) // which issue unit do we use?
  val fu_code = UInt(FUType.getWidth.W) // which functional unit do we use?

  val br_type = UInt(BRType.getWidth.W)

  // Was this a branch that was predicted taken?
  val taken = Bool()

  val imm_sel    = UInt(IMMType.getWidth.W)
  val imm_packed = UInt(LONGEST_IMM_WIDTH.W) // densely pack the imm in decode

  val op1_sel = UInt(OP1Type.getWidth.W)
  val op2_sel = UInt(OP2Type.getWidth.W)

  val rob_idx = UInt(params.robIdxWidth.W)
  val pdst    = UInt(log2Ceil(params.pregWidth).W) // physical destination register
  val prs1    = UInt(log2Ceil(params.pregWidth).W) // physical source register 1
  val prs2    = UInt(log2Ceil(params.pregWidth).W) // physical source register 2

  val prs1Busy = Bool()
  val prs2Busy = Bool()

  val stalePdst = UInt(log2Ceil(params.pregWidth).W) // stale physical destination register
  // val exception        = Bool()
  // val exc_cause        = UInt(xLen.W)          // TODO compress this down, xlen is insanity
  // val mem_cmd          = UInt(M_SZ.W)          // sync primitives/cache flushes
  // val mem_size         = UInt(2.W)
  // val mem_signed       = Bool()
  // val uses_ldq         = Bool()
  // val uses_stq         = Bool()
  // val is_unique        = Bool()                      // only allow this instruction in the pipeline, wait for STQ to
  //                                                    // drain, clear fetcha fter it (tell ROB to un-ready until empty)
  // val flush_on_commit  = Bool()                      // some instructions need to flush the pipeline behind them
  // val csr_cmd          = UInt(freechips.rocketchip.rocket.CSR.SZ.W)

  val ldst = UInt(log2Ceil(params.lregWidth).W) // logical destination register
  val lrs1 = UInt(log2Ceil(params.lregWidth).W) // logical source register 1
  val lrs2 = UInt(log2Ceil(params.lregWidth).W) // logical source register 2

  val debug_inst = UInt(commonParams.instWidth.W)
  val debug_pc   = UInt(commonParams.vaddrWidth.W)
}
