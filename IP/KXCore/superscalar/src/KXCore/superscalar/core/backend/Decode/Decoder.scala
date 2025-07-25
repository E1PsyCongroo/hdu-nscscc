package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import chisel3.util.experimental.decode._
import KXCore.common._
import KXCore.common.peripheral._
import KXCore.superscalar._

import Instruction._

class DecoderIO(implicit params: CoreParameters) extends Bundle {}

class Decoder(implicit params: CoreParameters) extends Module {
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
    // MUL_W,
    // MULH_W,
    // MULH_WU,
    // DIV_W,
    // MOD_W,
    // DIV_WU,
    // MOD_WU,
    // SLTI,
    // SLTUI,
    ADDI_W,
    // ANDI_W,
    // ORI_W,
    // XORI_W,
    LU12I_W,
    // PCADDU12I,
    // SLL_W,
    // SRL_W,
    // SRA_W,
    SLLI_W,
    SRLI_W,
    SRAI_W,
    JIRL,
    B,
    BL,
    BEQ,
    BNE,
    // BLT,
    // BGE,
    // BLTU,
    // BGEU,
    // LD_B,
    // LD_H,
    LD_W,
    // ST_B,
    // ST_H,
    ST_W,
    // LD_BU,
    // LD_HU,
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
    ),
  )
  // val decodeResult = decodeTable.decode(io.from.bits.inst)
}
