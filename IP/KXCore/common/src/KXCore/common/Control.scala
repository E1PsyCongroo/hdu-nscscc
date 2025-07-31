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
    val ALU_ANDN = Value("b1101".U)
    val ALU_ORN  = Value("b1110".U)

    def isSub(cmd: UInt)        = cmd(3)
    def cmpUnsigned(cmd: UInt)  = cmd(1)
    def shiftReverse(cmd: UInt) = cmd(1)
    def bwInvRs2(cmd: UInt)     = cmd(3)
  }

  object BRType extends ChiselEnum {
    val BR_N   = Value // Next
    val BR_NE  = Value // Branch on NotEqual
    val BR_EQ  = Value // Branch on Equal
    val BR_GE  = Value // Branch on Greater/Equal
    val BR_GEU = Value // Branch on Greater/Equal Unsigned
    val BR_LT  = Value // Branch on Less Than
    val BR_LTU = Value // Branch on Less Than Unsigned
    val BR_J   = Value // Jump
    val BR_JR  = Value // Jump Register
  }

  // RS1 Operand Select Signal
  object OP1Type extends ChiselEnum {
    val OP1_RS1  = Value // Register Source #1
    val OP1_ZERO = Value // constant 0
    val OP1_PC   = Value // Program Counter
  }

  // RS2 Operand Select Signal
  object OP2Type extends ChiselEnum {
    val OP2_RS2  = Value // Register Source #2
    val OP2_IMM  = Value // immediate
    val OP2_ZERO = Value // constant 0
    val OP2_NEXT = Value // constant 4 (for PC+4)
    val OP2_IMMC = Value // for CSR imm found in RS1
  }

  object RegWB extends ChiselEnum {
    val RegWB_NONE = Value // no writeback
    val RegWB_TRUE = Value // write to register
  }

  val LONGEST_IMM_WIDTH = 26
  object IMMType extends ChiselEnum {
    val IMM_NONE = Value // no immediate
    val IMM_5U   = Value
    val IMM_12   = Value
    val IMM_12U  = Value
    val IMM_14U  = Value
    val IMM_15U  = Value
    val IMM_16   = Value
    val IMM_20   = Value
    val IMM_26   = Value
  }

}
