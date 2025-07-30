package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.Control._
import KXCore.common.Privilege._
import KXCore.common.peripheral._
import KXCore.common.utils._
import KXCore.superscalar._
import firrtl.transforms.DontTouchAnnotation

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
  val rasTop    = UInt(vaddrWidth.W)

  val ftqIdx = UInt(log2Ceil(ftqNum).W)

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

class BrUpdateInfo(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, frontendParams}
  val mispredict = Bool()
  val taken      = Bool()
  val ftqIdx     = UInt(frontendParams.ftqNum.W)
  val target     = UInt(commonParams.vaddrWidth.W)
}

class FrontEndIO(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, frontendParams}
  val axi = new AXIBundle(axiParams)
  val icacheReq = Flipped(Decoupled(new Bundle {
    val cacop = UInt(CACOP.getWidth.W)
    val vaddr = UInt(commonParams.vaddrWidth.W)
  }))
  val itlbReq  = Output(new TLBReq)
  val itlbResp = Input(new TLBResp)
  val redirect = Flipped(Valid(new Bundle {
    val pc     = UInt(commonParams.vaddrWidth.W) // Redirect PC
    val ftqIdx = UInt(frontendParams.ftqNum.W)
  }))
  val brUpdate = Flipped(Valid(new BrUpdateInfo))
  val commit   = Flipped(Valid(UInt(frontendParams.ftqNum.W)))
}

class FrontEnd(implicit params: CoreParameters) extends Module {
  import params._
  import commonParams.{vaddrWidth, instWidth, instBytes, pcReset}
  import frontendParams._

  val io = IO(new FrontEndIO)

  val icache = Module(new ICache)
  val bpu    = Module(new SimpleBranchPredictor)
  val ras    = Module(new RAS)
  val rasIdx = RegInit(0.U(log2Ceil(rasNum).W))
  val flush = Wire(new Bundle {
    val stage1 = Bool()
    val stage2 = Bool()
  })
  val stage1Redirect = Wire(Decoupled(UInt(vaddrWidth.W)))
  val stage2Redirect = Wire(Decoupled(UInt(vaddrWidth.W)))

  flush.stage1    := io.redirect.valid || stage2Redirect.valid
  flush.stage2    := io.redirect.valid
  io.axi          <> icache.io.axi
  icache.io.flush := flush
  bpu.io.flush    := flush

  // stage0: pre-fetch
  val stage0Data = Wire(Decoupled(new Bundle {
    val fetchPC = UInt(vaddrWidth.W)
  }))
  val npc = Module(new Queue(UInt(vaddrWidth.W), 1, false, true, false, true))
  npc.io.flush.get := flush.stage1
  npc.io.enq.valid := RegNext(reset.asBool) || io.redirect.valid || stage2Redirect.valid || stage1Redirect.valid
  npc.io.enq.bits := MuxCase(
    DontCare,
    Seq(
      RegNext(reset.asBool) -> pcReset.U,
      io.redirect.valid     -> io.redirect.bits.pc,
      stage2Redirect.valid  -> stage2Redirect.bits,
      stage1Redirect.valid  -> stage1Redirect.bits,
    ),
  )
  stage1Redirect.ready := npc.io.enq.ready
  stage2Redirect.ready := npc.io.enq.ready
  val npcExt = ReadyValidIOExpand(npc.io.deq, 3)

  icache.io.req.stage0.valid      := npcExt.valid(0)
  npcExt.ready(0)                 := icache.io.req.stage0.ready
  icache.io.req.stage0.bits.vaddr := npcExt.bits

  bpu.io.req.stage0.valid := npcExt.valid(1)
  npcExt.ready(1)         := bpu.io.req.stage0.ready
  bpu.io.req.stage0.bits  := npcExt.bits

  stage0Data.valid        := npcExt.valid(2)
  npcExt.ready(2)         := stage0Data.ready
  stage0Data.bits.fetchPC := npcExt.bits

  val stage0to1 = Queue(stage0Data, 1, true, false, false, None)

  // stage1: fetch & branch prediction
  val stage0to1Ext     = ReadyValidIOExpand(stage0to1, 2)
  val bpuRespStage1Ext = ReadyValidIOExpand(bpu.io.resp.stage1, 2)

  val icacheCacopReq = Queue(io.icacheReq, 1, true, true, false, None)

  val icacheFetchReq = Wire(io.icacheReq.cloneType)
  icacheFetchReq.valid      := stage0to1Ext.valid(0)
  stage0to1Ext.ready(0)     := icacheFetchReq.ready
  icacheFetchReq.bits.vaddr := stage0to1Ext.bits.fetchPC
  icacheFetchReq.bits.cacop := CACOP.CACOP_HIT_READ.asUInt

  val icacheArb = Module(new Arbiter(io.icacheReq.bits.cloneType, 2))
  icacheArb.io.in(0)              <> icacheCacopReq
  icacheArb.io.in(1)              <> icacheFetchReq
  icache.io.req.stage1.valid      := icacheArb.io.out.valid
  icacheArb.io.out.ready          := icache.io.req.stage1.ready
  icache.io.req.stage1.bits.vaddr := icacheArb.io.out.bits.vaddr
  io.itlbReq.vaddr                := stage0to1Ext.bits.fetchPC
  icache.io.req.stage1.bits.paddr := io.itlbResp.paddr
  icache.io.req.stage1.bits.cacop := icacheArb.io.out.bits.cacop

  bpu.io.req.stage1.valid := stage0to1Ext.valid(1)
  stage0to1Ext.ready(1)   := bpu.io.req.stage1.ready
  bpu.io.req.stage1.bits  := stage0to1Ext.bits.fetchPC

  val stage1FetchMask = fetchMask(stage0to1Ext.bits.fetchPC)
  val stage1Redirects = (0 until fetchWidth).map { i =>
    stage1FetchMask(i) && bpu.io.resp.stage1.bits(i).target.valid &&
    (bpu.io.resp.stage1.bits(i).isJmp || (bpu.io.resp.stage1.bits(i).isBr && bpu.io.resp.stage1.bits(i).taken))
  }
  stage1Redirect.valid      := bpuRespStage1Ext.valid(0)
  bpuRespStage1Ext.ready(0) := stage1Redirect.ready
  stage1Redirect.bits := Mux(
    stage1Redirects.reduce(_ || _),
    bpu.io.resp.stage1.bits(PriorityEncoder(stage1Redirects)).target.bits,
    nextFetch(stage0to1Ext.bits.fetchPC),
  )

  val stage1Data = Wire(Decoupled(new Bundle {
    val fetchPC        = UInt(vaddrWidth.W)
    val stage1Redirect = UInt(vaddrWidth.W)
  }))
  stage1Data.valid               := bpuRespStage1Ext.valid(1)
  bpuRespStage1Ext.ready(1)      := stage1Data.ready
  stage1Data.bits.fetchPC        := stage0to1Ext.bits.fetchPC
  stage1Data.bits.stage1Redirect := stage1Redirect.bits

  val stage1to2 = Queue(stage1Data, 1, true, false, false, Some(flush.stage2))

  // stage2: pre-decode
  ras.io.read.idx := WrapDec(rasIdx, rasNum)
  def isBr(inst: UInt): Bool = {
    import Instruction._
    Seq(BEQ, BNE, BLT, BGE, BLTU, BGEU).map(_.inst === inst).reduce(_ || _)
  }
  def isB(inst: UInt): Bool = {
    import Instruction._
    Seq(B, BL).map(_.inst === inst).reduce(_ || _)
  }
  def isJIRL(inst: UInt): Bool = {
    inst === Instruction.JIRL.inst
  }
  def isJmp(inst: UInt): Bool = {
    import Instruction._
    isB(inst) || isJIRL(inst)
  }
  def isCall(inst: UInt): Bool = {
    import Instruction._
    (inst === BL.inst) || (inst === JIRL.inst && inst(4, 0) === 1.U && inst(25, 10) === 0.U)
  }
  def isRet(inst: UInt): Bool = {
    inst === Instruction.JIRL.inst && inst(4, 0) === 0.U && inst(9, 5) === 1.U && inst(25, 10) === 0.U
  }
  val stage2FetchBundle = Wire(new FetchBundle)
  stage2FetchBundle.pc    := stage1to2.bits.fetchPC
  stage2FetchBundle.npc   := Mux(stage2Redirect.valid, stage2Redirect.bits, stage1to2.bits.stage1Redirect)
  stage2FetchBundle.pcs   := VecInit((0 until fetchWidth).map(i => fetchAlign(stage1to2.bits.fetchPC) + (i * instBytes).U))
  stage2FetchBundle.insts := VecInit((0 until fetchWidth).map(i => icache.io.resp.stage2.bits.data((i + 1) * instWidth - 1, i * instWidth)))
  stage2FetchBundle.mask  := fetchMask(stage1to2.bits.fetchPC)

  val stage2BrMask   = VecInit(stage2FetchBundle.insts.map(isBr(_)))
  val stage2BMask    = VecInit(stage2FetchBundle.insts.map(isB(_)))
  val stage2JIRLMask = VecInit(stage2FetchBundle.insts.map(isJIRL(_)))
  val stage2JmpMask  = VecInit(stage2FetchBundle.insts.map(isJmp(_)))
  val stage2CallMask = VecInit(stage2FetchBundle.insts.map(isCall(_)))
  val stage2RetMask  = VecInit(stage2FetchBundle.insts.map(isRet(_)))
  val stage2CfiMask = (stage2BrMask zip stage2JmpMask zip stage2FetchBundle.mask.asBools).map { case ((isBr, isJmp), valid) =>
    (isBr || isJmp) && valid
  }
  val stage2CfiIdx = PriorityEncoder(stage2CfiMask)

  stage2FetchBundle.cfiIdx.valid := stage2CfiMask.reduce(_ || _)
  stage2FetchBundle.cfiIdx.bits  := stage2CfiIdx
  stage2FetchBundle.cfiType := MuxCase(
    CFIType.CFI_NONE.asUInt,
    Seq(
      stage2BrMask(stage2FetchBundle.cfiIdx.bits)   -> CFIType.CFI_BR.asUInt,
      stage2BMask(stage2FetchBundle.cfiIdx.bits)    -> CFIType.CFI_B.asUInt,
      stage2JIRLMask(stage2FetchBundle.cfiIdx.bits) -> CFIType.CFI_JIRL.asUInt,
    ),
  )
  stage2FetchBundle.cfiIsCall := stage2CallMask(stage2FetchBundle.cfiIdx.bits)
  stage2FetchBundle.cfiIsRet  := stage2RetMask(stage2FetchBundle.cfiIdx.bits)
  stage2FetchBundle.rasTop    := ras.io.read.addr

  stage2FetchBundle.ftqIdx := DontCare

  stage2Redirect.valid := bpu.io.resp.stage2.valid && stage1to2.valid && stage2FetchBundle.cfiIdx.valid &&
    (stage2JmpMask(stage2CfiIdx) || (stage2BrMask(stage2CfiIdx) && bpu.io.resp.stage2.bits.pred(stage2CfiIdx).taken)) &&
    stage2Redirect.bits =/= stage1to2.bits.stage1Redirect
  stage2Redirect.bits := MuxCase(
    stage1to2.bits.stage1Redirect,
    Seq(
      stage2JIRLMask(stage2CfiIdx) -> bpu.io.resp.stage2.bits.pred(stage2CfiIdx).target.bits,
      stage2BMask(stage2CfiIdx) -> (stage2FetchBundle
        .pcs(stage2CfiIdx) + Sext(Cat(stage2FetchBundle.insts(stage2CfiIdx)(9, 0), stage2FetchBundle.insts(stage2CfiIdx)(25, 10), 0.U(2.W)), 32)),
      stage2BrMask(stage2CfiIdx) -> (stage2FetchBundle.pcs(stage2CfiIdx) + Sext(Cat(stage2FetchBundle.insts(stage2CfiIdx)(25, 10), 0.U(2.W)), 32)),
    ),
  )

  ras.io.write.valid := stage2FetchBundle.cfiIdx.valid && stage2RetMask(stage2CfiIdx)
  ras.io.write.idx   := rasIdx
  ras.io.write.addr  := stage2FetchBundle.pcs(stage2CfiIdx) + 4.U

  icache.io.resp.stage2.ready := true.B
  bpu.io.resp.stage2.ready    := true.B
  stage1to2.ready             := true.B
  bpu.io.update.valid         := false.B
  bpu.io.update.bits          := DontCare

  dontTouch(stage2FetchBundle)
  dontTouch(stage1Redirect)
  dontTouch(stage2Redirect)
}
