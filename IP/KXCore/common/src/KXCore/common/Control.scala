package KXCore.common

import chisel3._
import chisel3.util._

object Control {
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

  object RegWB extends ChiselEnum {
    val RegWB_NONE = Value // no writeback
    val RegWB_TRUE = Value // write to register
  }

  val LONGEST_IMM_WIDTH = 26
  object IMMType extends ChiselEnum {
    val IMM_5U  = Value
    val IMM_12  = Value
    val IMM_12U = Value
    val IMM_14U = Value
    val IMM_15U = Value
    val IMM_16  = Value
    val IMM_20  = Value
    val IMM_26  = Value
  }
}
