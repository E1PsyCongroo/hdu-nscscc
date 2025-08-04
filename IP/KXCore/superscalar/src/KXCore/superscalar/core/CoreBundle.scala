package KXCore.superscalar.core

import chisel3._
import chisel3.util._
import KXCore.common.Privilege._
import KXCore.superscalar._

/** MicroOp passing through the pipeline
  */
class MicroOp(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, frontendParams, backendParams}
  import frontendParams.{icacheParams}
  val idx     = UInt(log2Ceil(frontendParams.fetchWidth).W)
  val inst    = UInt(commonParams.instWidth.W)
  val iqType  = UInt(IQType.getWidth.W) // which issue unit do we use?
  val fuType  = UInt(FUType.getWidth.W) // which functional unit do we use?
  val cfiType = UInt(CFIType.getWidth.W)

  val ftqIdx = UInt(log2Ceil(frontendParams.ftqNum).W)

  val imm = UInt(commonParams.dataWidth.W) // densely pack the imm in decode

  val op1Sel = UInt(OP1Type.getWidth.W)
  val op2Sel = UInt(OP2Type.getWidth.W)
  val aluCmd = UInt(ALUType.getWidth.W)

  val ldst = UInt(backendParams.lregWidth.W) // logical destination register
  val lrs1 = UInt(backendParams.lregWidth.W) // logical source register 1
  val lrs2 = UInt(backendParams.lregWidth.W) // logical source register 2

  val stalePdst = UInt(backendParams.pregWidth.W) // stale physical destination register
  val pdst      = UInt(backendParams.pregWidth.W) // physical destination register
  val prs1      = UInt(backendParams.pregWidth.W) // physical source register 1
  val prs2      = UInt(backendParams.pregWidth.W) // physical source register 2
  val prs1Busy  = Bool()
  val prs2Busy  = Bool()
  val busy      = Bool()

  val robIdx    = UInt(backendParams.robIdxWidth.W)
  val exception = Bool()
  val ecode     = UInt(ECODE.getWidth.W)
  val lsuCmd    = UInt(LSUType.getWidth.W)
  val isUnique  = Bool() // only allow this instruction in the pipeline, tell ROB to un-ready until empty
  val flush     = Bool() // some instructions need to flush the pipeline behind them
  // val csr_cmd          = UInt(freechips.rocketchip.rocket.CSR.SZ.W)

  val debug = new Bundle {
    val pc         = UInt(commonParams.vaddrWidth.W)
    val inst       = UInt(commonParams.instWidth.W)
    val store      = UInt(8.W)
    val storePaddr = UInt(commonParams.paddrWidth.W)
    val storeVaddr = UInt(commonParams.vaddrWidth.W)
    val storeData  = UInt(commonParams.dataWidth.W)
    val load       = UInt(8.W)
    val loadPaddr  = UInt(commonParams.paddrWidth.W)
    val loadVaddr  = UInt(commonParams.vaddrWidth.W)
    val loadData   = UInt(commonParams.dataWidth.W)
    val wdata      = UInt(commonParams.dataWidth.W)
  }
}
