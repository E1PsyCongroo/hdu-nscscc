package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import chisel3.util.experimental.decode._
import KXCore.common._
import KXCore.common.peripheral._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core._

import Instruction._

object IQTypeControlField extends DecodeField[Instruction, UInt] {
  def name             = "Issue queue type control field"
  def chiselType: UInt = UInt(IQType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU    => BitPat(IQType.IQT_MEM.asUInt)
      case MUL_W | MULH_W | MULH_WU | DIV_W | MOD_W | DIV_WU | MOD_WU => BitPat(IQType.IQT_UNQ.asUInt)
      case _                                                          => BitPat(IQType.IQT_INT.asUInt)
    }
  }
}

object FUTypeControlField extends DecodeField[Instruction, UInt] {
  def name             = "functional unit type control field"
  def chiselType: UInt = UInt(FUType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case PCADDU12I | JIRL | B | BL | BEQ | BNE | BLT | BGE | BLTU | BGEU     => BitPat(FUType.FUT_CFI.asUInt)
      case BREAK | SYSCALL | ERTN | IDLE | RDCNTVH_W | RDCNTVL_W               => BitPat(FUType.FUT_CSR.asUInt)
      case RDCNTID_W_0 | RDCNTID_W_1 | RDCNTID_W_2 | RDCNTID_W_3 | RDCNTID_W_4 => BitPat(FUType.FUT_CSR.asUInt)
      case CSRRD | CSRWR | CSRXCHG_0 | CSRXCHG_1 | CSRXCHG_2 | CSRXCHG_3       => BitPat(FUType.FUT_CSR.asUInt)
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU             => BitPat(FUType.FUT_MEM.asUInt)
      case MUL_W | MULH_W | MULH_WU                                            => BitPat(FUType.FUT_MUL.asUInt)
      case DIV_W | MOD_W | DIV_WU | MOD_WU                                     => BitPat(FUType.FUT_DIV.asUInt)
      case _                                                                   => BitPat(FUType.FUT_ALU.asUInt)
    }
  }
}

object CFITypeControlField extends DecodeField[Instruction, UInt] {
  def name             = "Control flow instruction type control field"
  def chiselType: UInt = UInt(CFIType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case B | BL                              => BitPat(CFIType.CFI_B.asUInt)
      case JIRL                                => BitPat(CFIType.CFI_JIRL.asUInt)
      case BNE | BEQ | BLT | BGE | BLTU | BGEU => BitPat(CFIType.CFI_BR.asUInt)
      case _                                   => BitPat(CFIType.CFI_NONE.asUInt)
    }
  }
}

object IMMTypeControlField extends DecodeField[Instruction, UInt] {
  def name             = "Immediate type control field"
  def chiselType: UInt = UInt(IMMType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case SLLI_W | SRLI_W | SRAI_W                                      => BitPat(IMMType.IMM_5U.asUInt)
      case SLTI | SLTUI | ADDI_W | CACOP                                 => BitPat(IMMType.IMM_12.asUInt)
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU       => BitPat(IMMType.IMM_12.asUInt)
      case ANDI | ORI | XORI                                             => BitPat(IMMType.IMM_12U.asUInt)
      case CSRRD | CSRWR | CSRXCHG_0 | CSRXCHG_1 | CSRXCHG_2 | CSRXCHG_3 => BitPat(IMMType.IMM_14U.asUInt)
      case SYSCALL | BREAK | IDLE                                        => BitPat(IMMType.IMM_15U.asUInt)
      case JIRL | BEQ | BNE | BLT | BGE | BLTU | BGEU                    => BitPat(IMMType.IMM_16.asUInt)
      case LU12I_W | PCADDU12I                                           => BitPat(IMMType.IMM_20.asUInt)
      case B | BL                                                        => BitPat(IMMType.IMM_26.asUInt)
      case _                                                             => dc
    }
  }
}

object OP1SelControlField extends DecodeField[Instruction, UInt] {
  def name             = "op1 sel control field"
  def chiselType: UInt = UInt(OP1Type.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case ADD_W | SUB_W | SLT | SLTU | NOR | AND | OR | XOR          => BitPat(OP1Type.OP1_RS1.asUInt)
      case MUL_W | MULH_W | MULH_WU | DIV_W | MOD_W | DIV_WU | MOD_WU => BitPat(OP1Type.OP1_RS1.asUInt)
      case SLTI | SLTUI | ADDI_W | ANDI | ORI | XORI                  => BitPat(OP1Type.OP1_RS1.asUInt)
      case SLL_W | SRL_W | SRA_W | SLLI_W | SRLI_W | SRAI_W           => BitPat(OP1Type.OP1_RS1.asUInt)
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU    => BitPat(OP1Type.OP1_RS1.asUInt)
      case BEQ | BNE | BLT | BGE | BLTU | BGEU                        => BitPat(OP1Type.OP1_RS1.asUInt)
      case LU12I_W                                                    => BitPat(OP1Type.OP1_RS1.asUInt)
      case PCADDU12I | JIRL | BL                                      => BitPat(OP1Type.OP1_PC.asUInt)
      case _                                                          => dc
    }
  }
}

object OP2SelControlField extends DecodeField[Instruction, UInt] {
  def name             = "op2 sel control field"
  def chiselType: UInt = UInt(OP2Type.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case ADD_W | SUB_W | SLT | SLTU | NOR | AND | OR | XOR          => BitPat(OP2Type.OP2_RS2.asUInt)
      case MUL_W | MULH_W | MULH_WU | DIV_W | MOD_W | DIV_WU | MOD_WU => BitPat(OP2Type.OP2_RS2.asUInt)
      case SLL_W | SRL_W | SRA_W                                      => BitPat(OP2Type.OP2_RS2.asUInt)
      case BEQ | BNE | BLT | BGE | BLTU | BGEU                        => BitPat(OP2Type.OP2_RS2.asUInt)
      case SLTI | SLTUI | ADDI_W | ANDI | ORI | XORI                  => BitPat(OP2Type.OP2_IMM.asUInt)
      case LU12I_W | PCADDU12I | SLLI_W | SRLI_W | SRAI_W             => BitPat(OP2Type.OP2_IMM.asUInt)
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU    => BitPat(OP2Type.OP2_IMM.asUInt)
      case JIRL | BL                                                  => BitPat(OP2Type.OP2_NEXT.asUInt)
      case _                                                          => dc
    }
  }
}

object ALUOPControlField extends DecodeField[Instruction, UInt] {
  def name             = "alu op control field"
  def chiselType: UInt = UInt(ALUType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case ADD_W | ADDI_W | LU12I_W | PCADDU12I | BL | JIRL        => BitPat(ALUType.ALU_ADD.asUInt)
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU => BitPat(ALUType.ALU_ADD.asUInt)
      case SUB_W | BEQ                                             => BitPat(ALUType.ALU_SUB.asUInt)
      case BNE                                                     => BitPat(ALUType.ALU_NEQ.asUInt)
      case SLT | SLTI | BLT                                        => BitPat(ALUType.ALU_SLT.asUInt)
      case BGE                                                     => BitPat(ALUType.ALU_SGE.asUInt)
      case SLTU | SLTUI | BLTU                                     => BitPat(ALUType.ALU_SLTU.asUInt)
      case BGEU                                                    => BitPat(ALUType.ALU_SGEU.asUInt)
      case NOR                                                     => BitPat(ALUType.ALU_NOR.asUInt)
      case AND | ANDI                                              => BitPat(ALUType.ALU_AND.asUInt)
      case OR | ORI                                                => BitPat(ALUType.ALU_OR.asUInt)
      case XOR | XORI                                              => BitPat(ALUType.ALU_XOR.asUInt)
      case MUL_W                                                   => BitPat(ALUType.ALU_MUL.asUInt)
      case MULH_W                                                  => BitPat(ALUType.ALU_MULH.asUInt)
      case MULH_WU                                                 => BitPat(ALUType.ALU_MULHU.asUInt)
      case DIV_W                                                   => BitPat(ALUType.ALU_DIV.asUInt)
      case MOD_W                                                   => BitPat(ALUType.ALU_MOD.asUInt)
      case DIV_WU                                                  => BitPat(ALUType.ALU_DIVU.asUInt)
      case MOD_WU                                                  => BitPat(ALUType.ALU_MODU.asUInt)
      case SLL_W | SLLI_W                                          => BitPat(ALUType.ALU_SLL.asUInt)
      case SRL_W | SRLI_W                                          => BitPat(ALUType.ALU_SRL.asUInt)
      case SRA_W | SRAI_W                                          => BitPat(ALUType.ALU_SRA.asUInt)
      case _                                                       => dc
    }
  }
}

object RS1From extends ChiselEnum {
  val rs1None   = Value
  val rs1FromRj = Value
  val rs1FromRd = Value
}

object RS1ControlField extends DecodeField[Instruction, UInt] {
  def name             = "rs1 valid control field"
  def chiselType: UInt = UInt(RS1From.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case LU12I_W | PCADDU12I | B | BL                                        => BitPat(RS1From.rs1None.asUInt)
      case SYSCALL | BREAK | ERTN | IDLE                                       => BitPat(RS1From.rs1None.asUInt)
      case RDCNTVL_W | RDCNTVH_W                                               => BitPat(RS1From.rs1FromRd.asUInt)
      case RDCNTID_W_0 | RDCNTID_W_1 | RDCNTID_W_2 | RDCNTID_W_3 | RDCNTID_W_4 => BitPat(RS1From.rs1FromRd.asUInt)
      case _                                                                   => BitPat(RS1From.rs1FromRj.asUInt)
    }
  }
}

object RS2From extends ChiselEnum {
  val rs2None   = Value
  val rs2FromRk = Value
  val rs2FromRj = Value
}

object RS2ControlField extends DecodeField[Instruction, UInt] {
  def name             = "rs2 valid control field"
  def chiselType: UInt = UInt(RS2From.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case ADDI_W | LU12I_W | SLTI | SLTUI | PCADDU12I                         => BitPat(RS2From.rs2None.asUInt)
      case ANDI | ORI | XORI                                                   => BitPat(RS2From.rs2None.asUInt)
      case SLLI_W | SRLI_W | SRAI_W                                            => BitPat(RS2From.rs2None.asUInt)
      case BEQ | BNE | BLT | BGE | BLTU | BGEU                                 => BitPat(RS2From.rs2None.asUInt)
      case B | BL | JIRL                                                       => BitPat(RS2From.rs2None.asUInt)
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU             => BitPat(RS2From.rs2None.asUInt)
      case SYSCALL | BREAK | ERTN | IDLE                                       => BitPat(RS2From.rs2None.asUInt)
      case RDCNTVL_W | RDCNTVH_W                                               => BitPat(RS2From.rs2None.asUInt)
      case CSRRD | CSRWR | CSRXCHG_0 | CSRXCHG_1 | CSRXCHG_2 | CSRXCHG_3       => BitPat(RS2From.rs2None.asUInt)
      case RDCNTID_W_0 | RDCNTID_W_1 | RDCNTID_W_2 | RDCNTID_W_3 | RDCNTID_W_4 => BitPat(RS2From.rs2FromRj.asUInt)
      case _                                                                   => BitPat(RS2From.rs2FromRk.asUInt)
    }
  }
}

object WBDest extends ChiselEnum {
  val destNone = Value
  val destRd   = Value
  val destR1   = Value
  val destRj   = Value
}

object WBControlField extends DecodeField[Instruction, UInt] {
  def name             = "Write Back control field"
  def chiselType: UInt = UInt(WBDest.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case ADD_W | SUB_W | SLT | SLTU | NOR | AND | OR | XOR                   => BitPat(WBDest.destRd.asUInt)
      case MUL_W | MULH_W | MULH_WU | DIV_W | MOD_W | DIV_WU | MOD_WU          => BitPat(WBDest.destRd.asUInt)
      case SLTI | SLTUI | ADDI_W | ANDI | ORI | XORI                           => BitPat(WBDest.destRd.asUInt)
      case LU12I_W | PCADDU12I                                                 => BitPat(WBDest.destRd.asUInt)
      case SLL_W | SRL_W | SRA_W | SLLI_W | SRLI_W | SRAI_W                    => BitPat(WBDest.destRd.asUInt)
      case JIRL                                                                => BitPat(WBDest.destRd.asUInt)
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU             => BitPat(WBDest.destRd.asUInt)
      case RDCNTVL_W | RDCNTVH_W                                               => BitPat(WBDest.destRd.asUInt)
      case CSRRD | CSRWR | CSRXCHG_0 | CSRXCHG_1 | CSRXCHG_2 | CSRXCHG_3       => BitPat(WBDest.destRd.asUInt)
      case RDCNTID_W_0 | RDCNTID_W_1 | RDCNTID_W_2 | RDCNTID_W_3 | RDCNTID_W_4 => BitPat(WBDest.destRd.asUInt)
      case BL                                                                  => BitPat(WBDest.destR1.asUInt)
      case _                                                                   => BitPat(WBDest.destNone.asUInt)
    }
  }
}

class DecoderIO(implicit params: CoreParameters) extends Bundle {
  val req  = Input(Vec(params.backendParams.coreWidth, new MicroOp))
  val resp = Output(Vec(params.backendParams.coreWidth, new MicroOp))
}

class Decoder(implicit params: CoreParameters) extends Module {
  import params.{commonParams, backendParams}
  import commonParams.{dataWidth}
  import backendParams.{coreWidth}
  val io = IO(new DecoderIO)

  val possiblePatterns = Seq(
    ADD_W,
    SUB_W,
    SLT,
    SLTU,
    NOR,
    AND,
    OR,
    XOR,
    MUL_W,
    MULH_W,
    MULH_WU,
    DIV_W,
    MOD_W,
    DIV_WU,
    MOD_WU,
    SLTI,
    SLTUI,
    ADDI_W,
    ANDI,
    ORI,
    XORI,
    LU12I_W,
    PCADDU12I,
    SLL_W,
    SRL_W,
    SRA_W,
    SLLI_W,
    SRLI_W,
    SRAI_W,
    JIRL,
    B,
    BL,
    BEQ,
    BNE,
    BLT,
    BGE,
    BLTU,
    BGEU,
    LD_B,
    LD_H,
    LD_W,
    ST_B,
    ST_H,
    ST_W,
    LD_BU,
    LD_HU,
    // PRELD,
    // LL_W,
    // SC_W,
    // DBAR,
    // IBAR,
    BREAK,
    SYSCALL,
    RDCNTID_W_0,
    RDCNTID_W_1,
    RDCNTID_W_2,
    RDCNTID_W_3,
    RDCNTID_W_4,
    RDCNTVL_W,
    RDCNTVH_W,
    CSRRD,
    CSRWR,
    CSRXCHG_0,
    CSRXCHG_1,
    CSRXCHG_2,
    CSRXCHG_3,
    // CACOP,
    // TLBSRCH,
    // TLBRD,
    // TLBWR,
    // TLBFILL,
    // INVTLB,
    ERTN,
    IDLE,
  )

  val decodeTable = new DecodeTable(
    possiblePatterns,
    Seq(
      IQTypeControlField,
      FUTypeControlField,
      CFITypeControlField,
      IMMTypeControlField,
      OP1SelControlField,
      OP2SelControlField,
      ALUOPControlField,
      RS1ControlField,
      RS2ControlField,
      WBControlField,
    ),
  )

  for (i <- 0 until coreWidth) {
    val decodeResult = decodeTable.decode(io.req(i).inst)
    val uop          = WireDefault(io.req(i))
    uop.iqType  := decodeResult(IQTypeControlField)
    uop.fuType  := decodeResult(FUTypeControlField)
    uop.cfiType := decodeResult(CFITypeControlField)
    uop.imm := MuxCase(
      DontCare,
      Seq(
        IMMType.IMM_5U  -> uop.inst(14, 10),
        IMMType.IMM_12  -> Sext(uop.inst(21, 10), dataWidth),
        IMMType.IMM_12U -> uop.inst(21, 10),
        IMMType.IMM_14U -> uop.inst(23, 10),
        IMMType.IMM_15U -> uop.inst(14, 0),
        IMMType.IMM_16  -> Sext((uop.inst(25, 10) << 2.U), dataWidth),
        IMMType.IMM_20  -> (uop.inst(24, 5) << 12.U),
        IMMType.IMM_26  -> Sext(Cat(uop.inst(9, 0), uop.inst(25, 10)) << 2.U, dataWidth),
      ).map { case (key, value) => (decodeResult(IMMTypeControlField) === key.asUInt, value) },
    )
    uop.op1Sel := decodeResult(OP1SelControlField)
    uop.op2Sel := decodeResult(OP2SelControlField)
    uop.aluCmd := decodeResult(ALUOPControlField)
    uop.lrs1 := MuxCase(
      0.U,
      Seq(
        RS1From.rs1None   -> 0.U,
        RS1From.rs1FromRj -> uop.inst(9, 5),
        RS1From.rs1FromRd -> uop.inst(4, 0),
      ).map { case (key, value) => (decodeResult(RS1ControlField) === key.asUInt, value) },
    )
    uop.lrs2 := MuxCase(
      0.U,
      Seq(
        RS2From.rs2None   -> 0.U,
        RS2From.rs2FromRk -> uop.inst(14, 10),
        RS2From.rs2FromRj -> uop.inst(9, 5),
      ).map { case (key, value) => (decodeResult(RS2ControlField) === key.asUInt, value) },
    )
    uop.ldst := MuxCase(
      0.U,
      Seq(
        WBDest.destNone -> 0.U,
        WBDest.destRd   -> uop.inst(4, 0),
        WBDest.destR1   -> 1.U,
        WBDest.destRj   -> uop.inst(9, 4),
      ).map { case (key, value) => (decodeResult(WBControlField) === key.asUInt, value) },
    )

    io.resp(i) := uop
  }
}
