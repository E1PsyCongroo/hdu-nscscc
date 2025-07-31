package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import chisel3.util.experimental.decode._
import KXCore.common._
import KXCore.common.peripheral._
import KXCore.superscalar._

import Instruction._
import KXCore.common.Control.BRType
import KXCore.common.Control.IMMType
import KXCore.common.Control.OP1Type
import KXCore.common.Control.OP2Type
import KXCore.common.utils.Sext
import KXCore.common.Control.LONGEST_IMM_WIDTH
import KXCore.common.Control.ALUType

object IQTypeControlField extends DecodeField[Instruction, UInt] {
  def name             = "Issue queue type control field"
  def chiselType: UInt = UInt(IQType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W                    => BitPat(IQType.IQT_MEM.asUInt)
      case MUL_W | MULH_W | MULH_WU | DIV_W | MOD_W | DIV_WU | MOD_WU => BitPat(IQType.IQT_MUL_DIV.asUInt)
      case _                                                          => BitPat(IQType.IQT_INT.asUInt)
    }
  }
}

object FUTypeControlField extends DecodeField[Instruction, UInt] {
  def name             = "functional unit type control field"
  def chiselType: UInt = UInt(FUType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case PCADDU12I | JIRL | B | BL | BEQ | BNE | BLT | BGE | BLTU | BGEU => BitPat(FUType.FUT_BRANCH.asUInt)
      case BREAK                                                           => BitPat(FUType.FUT_CSR.asUInt)
      case LD_B | LD_H | LD_W | ST_B | ST_H | ST_W                         => BitPat(FUType.FUT_MEM.asUInt)
      case MUL_W | MULH_W | MULH_WU                                        => BitPat(FUType.FUT_MUL.asUInt)
      case DIV_W | MOD_W | DIV_WU | MOD_WU                                 => BitPat(FUType.FUT_DIV.asUInt)
      case _                                                               => BitPat(FUType.FUT_ALU.asUInt)
    }
  }
}

object BRTypeControlField extends DecodeField[Instruction, UInt] {
  def name             = "Branch type control field"
  def chiselType: UInt = UInt(BRType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case JIRL   => BitPat(BRType.BR_JR.asUInt)
      case B | BL => BitPat(BRType.BR_J.asUInt)
      case BNE    => BitPat(BRType.BR_NE.asUInt)
      case BEQ    => BitPat(BRType.BR_EQ.asUInt)
      case BGE    => BitPat(BRType.BR_GE.asUInt)
      case BGEU   => BitPat(BRType.BR_GEU.asUInt)
      case BLT    => BitPat(BRType.BR_LT.asUInt)
      case BLTU   => BitPat(BRType.BR_LTU.asUInt)
      case _      => BitPat(BRType.BR_N.asUInt)
    }
  }
}

object IMMTypeControlField extends DecodeField[Instruction, UInt] {
  def name             = "Immediate type control field"
  def chiselType: UInt = UInt(IMMType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case SLLI_W | SRLI_W | SRAI_W                                => BitPat(IMMType.IMM_5U.asUInt)
      case SLTI | SLTUI | ADDI_W | CACOP                           => BitPat(IMMType.IMM_12.asUInt)
      case LD_B | LD_H | LD_W | LD_BU | LD_HU | ST_B | ST_H | ST_W => BitPat(IMMType.IMM_12.asUInt)
      case ANDI | ORI | XORI                                       => BitPat(IMMType.IMM_12U.asUInt)
      case CSRRD | CSRWR | CSRXCHG                                 => BitPat(IMMType.IMM_14U.asUInt)
      case BREAK | SYSCALL | IDLE                                  => BitPat(IMMType.IMM_15U.asUInt)
      case JIRL | BEQ | BNE | BLT | BGE | BLTU | BGEU              => BitPat(IMMType.IMM_16.asUInt)
      case LU12I_W | PCADDU12I                                     => BitPat(IMMType.IMM_20.asUInt)
      case B | BL                                                  => BitPat(IMMType.IMM_26.asUInt)
      case _                                                       => BitPat(IMMType.IMM_NONE.asUInt)
    }
  }
}

object OP1SelControlField extends DecodeField[Instruction, UInt] {
  def name             = "op1 sel control field"
  def chiselType: UInt = UInt(OP1Type.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case ADD_W | SUB_W | SLT | SLTU | NOR | AND | OR | XOR              => BitPat(OP1Type.OP1_RS1.asUInt)
      case MUL_W | MULH_W | MULH_WU | DIV_W | MOD_W | DIV_WU | MOD_WU     => BitPat(OP1Type.OP1_RS1.asUInt)
      case SLTI | SLTUI | ADDI_W | ANDI | ORI | XORI                      => BitPat(OP1Type.OP1_RS1.asUInt)
      case SLL_W | SRL_W | SRA_W | SLLI_W | SRLI_W | SRAI_W               => BitPat(OP1Type.OP1_RS1.asUInt)
      case JIRL | LD_B | LD_H | LD_W | ST_B | ST_H | ST_W | LD_BU | LD_HU => BitPat(OP1Type.OP1_RS1.asUInt)
      case PCADDU12I | B | BL | BEQ | BNE | BLT | BGE | BLTU | BGEU       => BitPat(OP1Type.OP1_PC.asUInt)
      case _                                                              => BitPat(OP1Type.OP1_ZERO.asUInt)
    }
  }
}

object OP2SelControlField extends DecodeField[Instruction, UInt] {
  def name             = "op2 sel control field"
  def chiselType: UInt = UInt(OP2Type.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case _ => BitPat(OP2Type.OP2_ZERO.asUInt)
    }
  }
}

object ALUOPControlField extends DecodeField[Instruction, UInt] {
  def name             = "alu op control field"
  def chiselType: UInt = UInt(ALUType.getWidth.W)
  def genTable(op: Instruction): BitPat = {
    op match {
      case _ => BitPat(ALUType.ALU_ADD.asUInt)
    }
  }
}

class DecoderIO(implicit params: CoreParameters) extends Bundle {
  val req  = Flipped(Decoupled(Vec(params.backendParams.coreWidth, Valid(new MicroOp))))
  val resp = Decoupled(Vec(params.backendParams.coreWidth, Valid(new MicroOp)))
}

class Decoder(implicit params: CoreParameters) extends Module {
  import params.{commonParams, backendParams}
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
    // BREAK,
    // SYSCALL,
    // RDCNTID_W,
    // RDCNTVL_W,
    // RDCNTVH_W,
    // CSRRD,
    // CSRWR,
    // CSRXCHG,
    // CACOP,
    // TLBSRCH,
    // TLBRD,
    // TLBWR,
    // TLBFILL,
    // INVTLB,
    // ERTN,
    // IDLE,
  )

  val decodeTable = new DecodeTable(
    possiblePatterns,
    Seq(
      IQTypeControlField,
      FUTypeControlField,
      BRTypeControlField,
      IMMTypeControlField,
      OP1SelControlField,
      OP2SelControlField,
    ),
  )

  val en     = RegInit(Fill(coreWidth, 1.B))
  val nextEn = Wire(en.cloneType)
  nextEn        := en & ~VecInit(io.resp.bits.map(uop => uop.valid)).asUInt
  en            := Mux(io.resp.fire, Mux(nextEn === 0.U, Fill(coreWidth, 1.B), nextEn), en)
  io.resp.valid := io.req.valid
  io.req.ready  := io.resp.ready

  for (i <- 0 until coreWidth) {
    io.resp.bits(i).valid := io.req.bits(i).valid && en(i)
    val decodeResult = decodeTable.decode(io.req.bits(i).bits.inst)
    val uop          = WireDefault(io.req.bits(i).bits)
    uop.iqType := decodeResult(IQTypeControlField)
    uop.fuType := decodeResult(FUTypeControlField)
    uop.brType := decodeResult(BRTypeControlField)
    uop.immSel := decodeResult(IMMTypeControlField)
    uop.immPacked := MuxCase(
      DontCare,
      Seq(
        IMMType.IMM_5U  -> uop.inst(14, 10),
        IMMType.IMM_12  -> Sext(uop.inst(21, 10), LONGEST_IMM_WIDTH),
        IMMType.IMM_12U -> uop.inst(21, 10),
        IMMType.IMM_14U -> uop.inst(23, 10),
        IMMType.IMM_15U -> uop.inst(14, 0),
        IMMType.IMM_16  -> Sext(uop.inst(25, 10), LONGEST_IMM_WIDTH),
        IMMType.IMM_20  -> Sext(uop.inst(24, 5), LONGEST_IMM_WIDTH),
        IMMType.IMM_26  -> Cat(uop.inst(9, 0), uop.inst(25, 10)),
      ).map { case (key, value) => (uop.immSel === key.asUInt, value) },
    )
    uop.op1Sel  := decodeResult(OP1SelControlField)
    uop.op2Sel  := decodeResult(OP2SelControlField)
    uop.alu_cmd := decodeResult(ALUOPControlField)
  }
}
