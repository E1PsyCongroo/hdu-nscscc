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

object CFIType extends ChiselEnum {
  val CFI_NONE = Value(0.U)
  val CFI_BR   = Value(1.U)
  val CFI_B    = Value(2.U)
  val CFI_JIRL = Value(3.U)
}

/** MicroOp passing through the pipeline
  */
class MicroOp(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, icacheParams, frontendParams, backendParams}
  val pcLow  = UInt(log2Ceil(params.fetchBytes).W)
  val inst   = UInt(commonParams.instWidth.W)
  val iqType = UInt(IQType.getWidth.W) // which issue unit do we use?
  val fuType = UInt(FUType.getWidth.W) // which functional unit do we use?

  val brType = UInt(BRType.getWidth.W)
  // Was this a branch that was predicted taken?
  val taken  = Bool()
  val ftqIdx = UInt(log2Ceil(frontendParams.ftqNum).W)

  val immSel    = UInt(IMMType.getWidth.W)
  val immPacked = UInt(LONGEST_IMM_WIDTH.W) // densely pack the imm in decode

  val op1Sel  = UInt(OP1Type.getWidth.W)
  val op2Sel  = UInt(OP2Type.getWidth.W)
  val alu_cmd = UInt(ALUType.getWidth.W)

  val robIdx = UInt(backendParams.robIdxWidth.W)
  val pdst   = UInt(log2Ceil(backendParams.pregWidth).W) // physical destination register
  val prs1   = UInt(log2Ceil(backendParams.pregWidth).W) // physical source register 1
  val prs2   = UInt(log2Ceil(backendParams.pregWidth).W) // physical source register 2

  val prs1Busy = Bool()
  val prs2Busy = Bool()

  val stalePdst = UInt(log2Ceil(backendParams.pregWidth).W) // stale physical destination register
  // val exception        = Bool()
  // val exc_cause        = UInt(xLen.W)          // TODO compress this down, xlen is insanity
  // val mem_cmd          = UInt(M_SZ.W)          // sync primitives/cache flushes
  // val mem_size         = UInt(2.W)
  // val mem_signed       = Bool()
  // val uses_ldq         = Bool()
  // val uses_stq         = Bool()
  // val is_unique = Bool() // only allow this instruction in the pipeline, wait for STQ to drain, clear fetcha fter it (tell ROB to un-ready until empty)
  // val flush_on_commit  = Bool()                      // some instructions need to flush the pipeline behind them
  // val csr_cmd          = UInt(freechips.rocketchip.rocket.CSR.SZ.W)

  val ldst = Valid(UInt(log2Ceil(backendParams.lregWidth).W)) // logical destination register
  val lrs1 = UInt(log2Ceil(backendParams.lregWidth).W)        // logical source register 1
  val lrs2 = UInt(log2Ceil(backendParams.lregWidth).W)        // logical source register 2

  val debug = new Bundle {
    val pc = UInt(commonParams.vaddrWidth.W)
  }
}
