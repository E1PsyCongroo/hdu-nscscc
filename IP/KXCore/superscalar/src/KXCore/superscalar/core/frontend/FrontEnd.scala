package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.Privilege._
import KXCore.common.peripheral._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core._

class FrontEndIO(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, frontendParams}
  val axi = new AXIBundle(axiParams)
  val icacheReq = Flipped(Decoupled(new Bundle {
    val cacop = UInt(CACOP.getWidth.W)
    val vaddr = UInt(commonParams.vaddrWidth.W)
  }))
  val itlbReq     = Output(new TLBReq)
  val itlbResp    = Input(new TLBResp)
  val fetchPacket = Decoupled(new FetchBufferResp())
  val getPC       = new GetPCFromFtqIO
  val commit = Flipped(Valid(new Bundle {
    val ftqIdx   = UInt(log2Ceil(frontendParams.ftqNum).W)
    val brUpdate = Valid(new BrUpdateInfo)
  }))
}

class FrontEnd(implicit params: CoreParameters) extends Module {
  import params._
  import commonParams.{vaddrWidth, instWidth, instBytes, pcReset}
  import frontendParams._

  val io = IO(new FrontEndIO)

  val icache = Module(new ICache()(commonParams, icacheParams, axiParams))
  val bpu    = Module(new SimpleBranchPredictor)
  val ras    = Module(new RAS)
  val fb     = Module(new FetchBuffer)
  val ftq    = Module(new FetchTargetQueue)
  val rasIdx = RegInit(0.U(log2Ceil(rasNum).W))
  val flush = Wire(new Bundle {
    val stage1 = Bool()
    val stage2 = Bool()
  })
  val stage1Redirect = Wire(Decoupled(UInt(vaddrWidth.W)))
  val stage2Redirect = Wire(Decoupled(UInt(vaddrWidth.W)))

  val backendRedirect = Wire(Valid(UInt(vaddrWidth.W)))
  backendRedirect.valid := io.commit.valid && io.commit.bits.brUpdate.valid && io.commit.bits.brUpdate.bits.mispredict
  backendRedirect.bits  := io.commit.bits.brUpdate.bits.target

  flush.stage1 := backendRedirect.valid || stage2Redirect.valid
  flush.stage2 := backendRedirect.valid

  io.axi          <> icache.io.axi
  icache.io.flush := flush

  bpu.io.flush  := flush
  bpu.io.update := ftq.io.bpuUpdate

  io.fetchPacket <> fb.io.deq
  fb.io.flush    := flush.stage2

  io.getPC                 <> ftq.io.getPC
  ftq.io.deq.valid         := io.commit.valid
  ftq.io.deq.bits.idx      := io.commit.bits.ftqIdx
  ftq.io.deq.bits.redirect := backendRedirect.valid
  ftq.io.deq.bits.brUpdate := io.commit.bits.brUpdate

  // stage0: pre-fetch
  val stage0Data = Wire(Decoupled(new Bundle {
    val fetchPC = UInt(vaddrWidth.W)
  }))
  val npc = Module(new Queue(UInt(vaddrWidth.W), 1, false, true, false, true))
  npc.io.flush.get := flush.stage1
  npc.io.enq.valid := RegNext(reset.asBool) || backendRedirect.valid ||
    stage2Redirect.valid || stage1Redirect.valid
  npc.io.enq.bits := MuxCase(
    DontCare,
    Seq(
      RegNext(reset.asBool) -> pcReset.U,
      backendRedirect.valid -> backendRedirect.bits,
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

  val stage0to1 = Wire(stage0Data.cloneType)
  PipeConnect(Some(flush.stage1), stage0Data, stage0to1)

  // stage1: fetch & branch prediction
  val stage0to1Ext     = ReadyValidIOExpand(stage0to1, 2)
  val bpuRespStage1Ext = ReadyValidIOExpand(bpu.io.resp.stage1, 2)

  val icacheCacopReq = Wire(io.icacheReq.cloneType)
  PipeConnect(None, io.icacheReq, icacheCacopReq)

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

  val stage1to2 = Wire(stage1Data.cloneType)
  PipeConnect(Some(flush.stage2), stage1Data, stage1to2)

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
  val stage2FetchMask   = fetchMask(stage1to2.bits.fetchPC)
  val stage2FetchBundle = Wire(new FetchBundle)
  val stage2PCs         = VecInit((0 to fetchWidth).map(i => fetchAlign(stage1to2.bits.fetchPC) + (i * instBytes).U))
  stage2FetchBundle.pc    := stage1to2.bits.fetchPC
  stage2FetchBundle.npc   := Mux(stage2Redirect.valid, stage2Redirect.bits, stage1to2.bits.stage1Redirect)
  stage2FetchBundle.pcs   := VecInit(stage2PCs.init)
  stage2FetchBundle.insts := VecInit((0 until fetchWidth).map(i => icache.io.resp.stage2.bits.data((i + 1) * instWidth - 1, i * instWidth)))

  val stage2BrMask   = VecInit(stage2FetchBundle.insts.map(isBr(_))).asUInt
  val stage2BMask    = VecInit(stage2FetchBundle.insts.map(isB(_))).asUInt
  val stage2JIRLMask = VecInit(stage2FetchBundle.insts.map(isJIRL(_))).asUInt
  val stage2JmpMask  = VecInit(stage2FetchBundle.insts.map(isJmp(_))).asUInt
  val stage2CallMask = VecInit(stage2FetchBundle.insts.map(isCall(_))).asUInt
  val stage2RetMask  = VecInit(stage2FetchBundle.insts.map(isRet(_))).asUInt
  val stage2CfiMask = VecInit((0 until fetchWidth).map { i =>
    stage2FetchMask(i) && (stage2JmpMask(i) || (stage2BrMask(i) && bpu.io.resp.stage2.bits.pred(i).taken))
  }).asUInt
  val stage2CfiIdx = PriorityEncoder(stage2CfiMask)
  stage2FetchBundle.mask := stage2FetchMask & ~(MaskUpper(stage2CfiMask) << 1.U)

  stage2FetchBundle.cfiIdx.valid := stage2CfiMask.orR
  stage2FetchBundle.cfiIdx.bits  := stage2CfiIdx
  stage2FetchBundle.ftqIdx       := ftq.io.enqIdx
  stage2FetchBundle.bpuMeta      := bpu.io.resp.stage2.bits.meta

  val stage2Data = Wire(Decoupled(stage2FetchBundle.cloneType))
  stage2Data.valid            := bpu.io.resp.stage2.valid && icache.io.resp.stage2.valid && stage1to2.valid
  bpu.io.resp.stage2.ready    := stage2Data.ready
  icache.io.resp.stage2.ready := stage2Data.ready
  stage1to2.ready             := stage2Data.ready
  stage2Data.bits             := stage2FetchBundle
  val stage2DataExt = ReadyValidIOExpand(stage2Data, 2)

  stage2Redirect.valid := stage2DataExt.valid(0) && stage2DataExt.bits.cfiIdx.valid &&
    stage2Redirect.bits =/= stage1to2.bits.stage1Redirect
  stage2DataExt.ready(0) := stage2Redirect.ready
  stage2Redirect.bits := MuxCase(
    stage1to2.bits.stage1Redirect,
    Seq(
      stage2RetMask(stage2CfiIdx)  -> ras.io.read.addr,
      stage2JIRLMask(stage2CfiIdx) -> bpu.io.resp.stage2.bits.pred(stage2CfiIdx).target.bits,
      stage2BMask(stage2CfiIdx) -> (stage2DataExt.bits
        .pcs(stage2CfiIdx) + Sext(Cat(stage2DataExt.bits.insts(stage2CfiIdx)(9, 0), stage2DataExt.bits.insts(stage2CfiIdx)(25, 10), 0.U(2.W)), 32)),
      stage2BrMask(stage2CfiIdx) -> (stage2DataExt.bits.pcs(stage2CfiIdx) + Sext(Cat(stage2DataExt.bits.insts(stage2CfiIdx)(25, 10), 0.U(2.W)), 32)),
    ),
  )
  dontTouch(stage2FetchBundle)
  dontTouch(stage2Redirect)

  ras.io.write.valid := stage2Data.fire && stage2DataExt.bits.cfiIdx.valid && stage2CallMask(stage2CfiIdx)
  ras.io.write.idx   := rasIdx
  ras.io.write.addr  := stage2PCs(stage2Data.bits.cfiIdx.bits +& 1.U)
  rasIdx := MuxCase(
    rasIdx,
    Seq(
      (stage2Data.fire && stage2RetMask(stage2CfiIdx))  -> WrapDec(rasIdx, rasNum),
      (stage2Data.fire && stage2CallMask(stage2CfiIdx)) -> WrapInc(rasIdx, rasNum),
    ),
  )

  val stage2Fire = fb.io.enq.ready && ftq.io.enq.ready && stage2DataExt.valid(1)
  stage2DataExt.ready(1) := stage2Fire
  fb.io.enq.valid        := stage2Fire
  fb.io.enq.bits         := stage2DataExt.bits
  ftq.io.enq.valid       := stage2Fire
  ftq.io.enq.bits        := stage2DataExt.bits
}
