package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.Control._
import KXCore.common.Privilege._
import KXCore.common.peripheral._
import KXCore.superscalar._
import KXCore.common.PipeConnect

class FetchBundle(implicit params: CoreParameters) extends Bundle {
  import params.commonParams.{vaddrWidth, instWidth}
  import params.frontendParams._
  val pc    = UInt(vaddrWidth.W)
  val npc   = UInt(vaddrWidth.W)
  val pcs   = Vec(fetchWidth, UInt(vaddrWidth.W))
  val insts = Vec(fetchWidth, UInt(instWidth.W))
  val mask  = UInt(fetchWidth.W) // mark which words are valid instructions

  val cfiIdx    = Valid(UInt(log2Ceil(fetchWidth).W))
  val cfiType   = UInt(CFIType.getWidth.W)
  val cfiIsCall = Bool()
  val cfiIsRet  = Bool()

  val rasTop = UInt(vaddrWidth.W)

  val ftqIdx = UInt(log2Ceil(ftqNum).W)

  val brMask = UInt(fetchWidth.W)

  val exception = new Bundle {}

  // val ghist = new GlobalHistory
  // val lhist = Vec(nBanks, UInt(localHistoryLength.W))

  // val xcpt_pf_if = Bool() // I-TLB miss (instruction fetch fault).
  // val xcpt_ae_if = Bool() // Access exception.

  // val bp_debug_if_oh = Vec(fetchWidth, Bool())
  // val bp_xcpt_if_oh  = Vec(fetchWidth, Bool())

  // val end_half = Valid(UInt(16.W))

  // val bpd_meta = Vec(nBanks, UInt())

  // // Source of the prediction from this bundle
  // val fsrc = UInt(BSRC_SZ.W)
  // // Source of the prediction to this bundle
  // val tsrc = UInt(BSRC_SZ.W)
}

class FrontEndIO(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams}
  val axi = new AXIBundle(axiParams)
  val icacheReq = Flipped(Decoupled(new Bundle {
    val cacop = UInt(CACOP.getWidth.W)
    val vaddr = UInt(commonParams.vaddrWidth.W)
  }))
  val itlbReq  = Output(new TLBReq)
  val itlbResp = Input(new TLBResp)
  val redirect = Flipped(Valid(new Bundle {
    val pc     = UInt(commonParams.vaddrWidth.W) // Redirect PC
    val ftqIdx = UInt(0.W)
  }))
  val brupdate = Flipped(Valid(UInt(0.W)))
  val commit   = Flipped(Valid(UInt(0.W)))
}

class FrontEnd(implicit params: CoreParameters) extends Module {
  import params._
  import commonParams.{vaddrWidth, instWidth, instBytes, pcReset}
  import frontendParams._

  val io = IO(new FrontEndIO)

  val icache = Module(new ICache)
  val bpu    = Module(new BranchPredictor)
  val ras    = Module(new RAS)
  val rasIdx = RegInit(0.U(log2Ceil(rasNum).W))
  val flush = Wire(new Bundle {
    val stage1 = Bool()
    val stage2 = Bool()
  })
  val stage1Redirect = Wire(Decoupled(UInt(vaddrWidth.W)))
  val stage2Redirect = Wire(Decoupled(UInt(vaddrWidth.W)))

  io.axi          <> icache.io.axi
  icache.io.flush := flush
  bpu.io.flush    := flush

  // stage0: pre-fetch
  val npc          = Wire(UInt(vaddrWidth.W))
  val npcValid     = RegInit(Fill(4, true.B))
  val npcNextValid = Wire(UInt(4.W))
  val npcReady     = Wire(UInt(4.W))

  val stage0Data = Wire(Decoupled(new Bundle {
    val fetchPC = UInt(vaddrWidth.W)
  }))
  stage0Data.valid        := npcValid(0)
  io.icacheReq.ready      := stage0Data.ready
  stage0Data.bits.fetchPC := npc

  icache.io.req.stage0.valid := npcValid(1)
  icache.io.req.stage0.bits  := stage0Data.bits.fetchPC

  bpu.io.req.stage0(0).valid := npcValid(2)
  bpu.io.req.stage0(0).bits  := stage0Data.bits.fetchPC
  bpu.io.req.stage0(1).valid := npcValid(3)
  bpu.io.req.stage0(1).bits  := stage0Data.bits.fetchPC

  npcReady     := Cat(bpu.io.req.stage0(1).ready, bpu.io.req.stage0(0).ready, icache.io.req.stage0.ready, stage0Data.ready)
  npcNextValid := npcValid & ~npcReady
  npcValid     := Mux(npcNextValid === 0.U, Fill(4, true.B), npcNextValid)

  val stage0to1 = Vec(5, Wire(stage0Data.cloneType))
  PipeConnect(None, Some(flush.stage1), stage0Data, stage0to1: _*)

  npc := MuxCase(
    nextFetch(stage0to1(0).bits.fetchPC),
    Seq(
      RegNext(reset.asBool) -> pcReset.U,
      io.redirect.valid     -> io.redirect.bits.pc,
      stage2Redirect.valid  -> stage2Redirect.bits,
      stage1Redirect.valid  -> stage1Redirect.bits,
    ),
  )
  stage1Redirect.ready := stage0Data.ready
  stage2Redirect.ready := stage0Data.ready

  // stage1: fetch & branch prediction
  io.itlbReq.vaddr := stage0to1(0).bits.fetchPC

  val icacheCacopReq = Wire(io.icacheReq.cloneType)
  PipeConnect(None, None, io.icacheReq, icacheCacopReq)

  val icacheFetchReq = Wire(io.icacheReq.cloneType)
  icacheFetchReq.valid      := stage0to1(0).valid
  stage0to1(0).ready        := icacheFetchReq.ready
  icacheFetchReq.bits.vaddr := stage0to1(0).bits.fetchPC
  icacheFetchReq.bits.cacop := CACOP.CACOP_HIT_READ.asUInt

  val icacheArb = Module(new Arbiter(io.icacheReq.bits.cloneType, 2))
  icacheArb.io.in(0)              <> icacheCacopReq
  icacheArb.io.in(1)              <> icacheFetchReq
  icache.io.req.stage1.valid      := icacheArb.io.out.valid
  icacheArb.io.out.ready          := icache.io.req.stage1.ready
  icache.io.req.stage1.bits.vaddr := icacheArb.io.out.bits.vaddr
  icache.io.req.stage1.bits.paddr := io.itlbResp.paddr
  icache.io.req.stage1.bits.cacop := icacheArb.io.out.bits.cacop

  for (i <- 0 until 3) {
    bpu.io.req.stage1(i).valid := stage0to1(i + 1).valid
    stage0to1(i + 1).ready     := bpu.io.req.stage1(i).ready
    bpu.io.req.stage1(i).bits  := stage0to1(i + 1).bits.fetchPC
  }

  val stage1FetchMask = fetchMask(stage0to1(0).bits.fetchPC)
  val stage1Redirects = (0 until fetchWidth).map { i =>
    stage1FetchMask(i) && bpu.io.resp.stage1.bits(i).target.valid &&
    (bpu.io.resp.stage1.bits(i).isJmp || (bpu.io.resp.stage1.bits(i).isBr && bpu.io.resp.stage1.bits(i).taken))
  }
  stage1Redirect.valid     := bpu.io.resp.stage1.valid && stage1Redirects.reduce(_ || _)
  stage1Redirect.bits      := bpu.io.resp.stage1.bits(PriorityEncoder(stage1Redirects)).target.bits
  bpu.io.resp.stage1.ready := stage1Redirect.ready

  val stage1Data = Wire(Decoupled(new Bundle {
    val fetchPC        = UInt(vaddrWidth.W)
    val stage1Redirect = Valid(UInt(vaddrWidth.W))
  }))
  val stage1to2 = Wire(stage0to1(4).cloneType)
  PipeConnect(None, Some(flush.stage2), stage0to1(4), stage1to2)

  // stage2: pre-decode
  ras.io.read.idx := rasIdx

  def isBr(inst: UInt): Bool = {
    import Instruction._
    Seq(BEQ, BNE, BLT, BGE, BLTU, BGEU).map(_.inst === inst).reduce(_ || _)
  }
  def isJmp(inst: UInt): Bool = {
    import Instruction._
    Seq(B, BL, JIRL).map(_.inst === inst).reduce(_ || _)
  }
  def isCall(inst: UInt): Bool = {
    import Instruction._
    (inst === BL.inst) || (inst === JIRL.inst && inst(4, 0) === 1.U && inst(25, 10) === 0.U)
  }
  def isRet(inst: UInt): Bool = {
    inst === Instruction.JIRL.inst && inst(4, 0) === 0.U && inst(9, 5) === 1.U && inst(25, 10) === 0.U
  }
  val stage2FetchMask   = fetchMask(stage1to2.bits.fetchPC)
  val stage2FetchBundle = Wire(new FetchBundle)
  val stage2PCs         = VecInit((0 until (fetchWidth + 1)).map(i => fetchAlign(stage1to2.bits.fetchPC) + (i * instBytes).U))
  val stage2Insts       = VecInit((0 until fetchWidth).map(i => icache.io.resp.stage2.bits.data((i + 1) * instWidth - 1, i * instWidth)))
  val stage2BrMask      = VecInit(stage2Insts.map(isBr(_)))
  val stage2JmpMask     = VecInit(stage2Insts.map(isJmp(_)))
  val stage2CallMask    = VecInit(stage2Insts.map(isCall(_)))
  val stage2RetMask     = VecInit(stage2Insts.map(isRet(_)))
  val stage2CfiMask = (stage2BrMask zip stage2JmpMask zip stage2FetchMask.asBools).map { case ((isBr, isJmp), valid) =>
    (isBr || isJmp) && valid
  }

  val stage2Redirects = (0 until fetchWidth).map { i =>
    stage2FetchMask(i) && bpu.io.resp.stage2.bits(i).target.valid &&
    (bpu.io.resp.stage2.bits(i).isJmp || (bpu.io.resp.stage2.bits(i).isBr && bpu.io.resp.stage2.bits(i).taken))
  }
  stage2Redirect.valid     := bpu.io.resp.stage2.valid && stage2Redirects.reduce(_ || _)
  stage2Redirect.bits      := bpu.io.resp.stage2.bits(PriorityEncoder(stage2Redirects)).target.bits
  bpu.io.resp.stage2.ready := stage2Redirect.ready

}
