package KXCore.superscalar

import chisel3._
import chisel3.util._

object ALUType extends ChiselEnum {
  val ALU_ADD  = Value("b0000".U)
  val ALU_SLL  = Value("b0001".U)
  val ALU_SRL  = Value("b0010".U)
  val ALU_SRA  = Value("b0011".U)
  val ALU_NOR  = Value("b0100".U)
  val ALU_AND  = Value("b0101".U)
  val ALU_OR   = Value("b0110".U)
  val ALU_XOR  = Value("b0111".U)
  val ALU_SUB  = Value("b1000".U)
  val ALU_SLT  = Value("b1001".U)
  val ALU_SLTU = Value("b1010".U)
  val ALU_NEQ  = Value("b1011".U)
  val ALU_SGE  = Value("b1101".U)
  val ALU_SGEU = Value("b1110".U)

  object MUL_DIV extends ChiselEnum {
    val MUL         = Value("b0000".U)
    val MULH        = Value("b0001".U)
    val MULHU       = Value("b0011".U)
    val DIV         = Value("b0100".U)
    val MOD         = Value("b0101".U)
    val DIVU        = Value("b0110".U)
    val MODU        = Value("b0111".U)
    val MUL_DIV_MAX = Value("b1111".U)
  }

  def ALU_MUL   = MUL_DIV.MUL
  def ALU_MULH  = MUL_DIV.MULH
  def ALU_MULHU = MUL_DIV.MULHU
  def ALU_DIV   = MUL_DIV.DIV
  def ALU_MOD   = MUL_DIV.MOD
  def ALU_DIVU  = MUL_DIV.DIVU
  def ALU_MODU  = MUL_DIV.MODU

  def isSub(cmd: UInt)        = cmd(3)
  def cmpUnsigned(cmd: UInt)  = cmd(1)
  def shiftReverse(cmd: UInt) = cmd(1)
  def bwInvRs2(cmd: UInt)     = cmd(3)
}

// RS1 Operand Select Signal
object OP1Type extends ChiselEnum {
  val OP1_RS1  = Value // Register Source #1
  val OP1_PC   = Value // Program Counter
  val OP1_ZERO = Value
}

// RS2 Operand Select Signal
object OP2Type extends ChiselEnum {
  val OP2_RS2  = Value // Register Source #2
  val OP2_IMM  = Value // immediate
  val OP2_NEXT = Value // constant 4 (for PC+4)
}

object IMMType extends ChiselEnum {
  val LONGEST_IMM_WIDTH = 26
  val IMM_5U            = Value
  val IMM_12            = Value
  val IMM_12U           = Value
  val IMM_14U           = Value
  val IMM_15U           = Value
  val IMM_16            = Value
  val IMM_20            = Value
  val IMM_26            = Value
}

object IQType extends ChiselEnum {
  val IQT_INT     = Value(0.U)
  val IQT_MUL_DIV = Value(1.U)
  val IQT_MEM     = Value(2.U)
}

object FUType extends ChiselEnum {
  // bit mask, since a given execution pipeline may support multiple functional units
  val FUT_ALU = Value(1.U)
  val FUT_CFI = Value(2.U)
  val FUT_MEM = Value(4.U)
  val FUT_MUL = Value(8.U)
  val FUT_DIV = Value(16.U)
  val FUT_CSR = Value(32.U)
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
  val pcLow   = UInt(log2Ceil(params.fetchBytes).W)
  val inst    = UInt(commonParams.instWidth.W)
  val iqType  = UInt(IQType.getWidth.W) // which issue unit do we use?
  val fuType  = UInt(FUType.getWidth.W) // which functional unit do we use?
  val cfiType = UInt(CFIType.getWidth.W)

  // Was this a branch that was predicted taken?
  val taken  = Bool()
  val ftqIdx = UInt(log2Ceil(frontendParams.ftqNum).W)

  val imm = UInt(commonParams.dataWidth.W) // densely pack the imm in decode

  val op1Sel = UInt(OP1Type.getWidth.W)
  val op2Sel = UInt(OP2Type.getWidth.W)
  val aluCmd = UInt(ALUType.getWidth.W)

  val stalePdst = UInt(log2Ceil(backendParams.pregWidth).W) // stale physical destination register
  val pdst      = UInt(log2Ceil(backendParams.pregWidth).W) // physical destination register
  val prs1      = UInt(log2Ceil(backendParams.pregWidth).W) // physical source register 1
  val prs2      = UInt(log2Ceil(backendParams.pregWidth).W) // physical source register 2
  val prs1Busy  = Bool()
  val prs2Busy  = Bool()
  val busy      = Bool()

  val robIdx    = UInt(backendParams.robIdxWidth.W)
  val exception = Bool()
  // val exc_cause        = UInt(xLen.W)          // TODO compress this down, xlen is insanity
  // val mem_cmd          = UInt(M_SZ.W)          // sync primitives/cache flushes
  // val mem_size         = UInt(2.W)
  // val mem_signed       = Bool()
  // val uses_ldq         = Bool()
  // val uses_stq         = Bool()
  val isUnique = Bool() // only allow this instruction in the pipeline, tell ROB to un-ready until empty
  // val flush_on_commit  = Bool()                      // some instructions need to flush the pipeline behind them
  // val csr_cmd          = UInt(freechips.rocketchip.rocket.CSR.SZ.W)

  val ldst = UInt(log2Ceil(backendParams.lregWidth).W) // logical destination register
  val lrs1 = UInt(log2Ceil(backendParams.lregWidth).W) // logical source register 1
  val lrs2 = UInt(log2Ceil(backendParams.lregWidth).W) // logical source register 2

  val debug = new Bundle {
    val pc = UInt(commonParams.vaddrWidth.W)
  }
}
