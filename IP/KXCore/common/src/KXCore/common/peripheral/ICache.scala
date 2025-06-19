package KXCore.common.peripheral

import chisel3._
import chisel3.util._
import chisel3.util.random._
import chisel3.experimental.dataview._
import KXCore.common._
import KXCore.common.peripheral._
import KXCore.common.Privilege._
import KXCore.common.Privilege.CACOP._

object ICache {
  def getSet(vaddr: UInt)(implicit cacheParams: CacheParameters): UInt = {
    vaddr(cacheParams.setWidth + cacheParams.blockWidth - 1, cacheParams.blockWidth)
  }

  def getTag(paddr: UInt)(implicit commonParams: CommonParameters, cacheParams: CacheParameters): UInt = {
    paddr.head(commonParams.paddrWidth - cacheParams.setWidth - cacheParams.blockWidth)
  }

  class ICacheStage0Req(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    val vaddr = UInt(commonParams.vaddrWidth.W)
    val paddr = UInt(commonParams.paddrWidth.W)
    val cacop = UInt(CACOP.getWidth.W) // cache operation code (e.g., Flush, Index Invalidate, Hit Invalidate)
  }

  class ICacheStage0Resp(implicit params: CommonParameters) extends Bundle {
    val vaddr = UInt(params.vaddrWidth.W)
    val cacop = UInt(CACOP.getWidth.W)
  }

  class ICacheStage1Req(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import commonParams.{paddrWidth, vaddrWidth}
    import cacheParams.{blockBits, blockWidth, setWidth, nSets, nWays}
    private val tagWidth = paddrWidth - setWidth - blockWidth
    val vaddr            = UInt(vaddrWidth.W)
    val paddr            = UInt(paddrWidth.W)
    val cacop            = UInt(CACOP.getWidth.W)
    val wayValid         = Vec(nWays, Bool())
    val wayTag           = Vec(nWays, UInt(tagWidth.W))
    val wayData          = Vec(nWays, UInt(blockBits.W))
  }

  class ICacheStage1Resp(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    val data      = UInt(cacheParams.blockBits.W)
    val exception = Bool() // Indicates whether an exception occurred
  }

  class ICacheValidWrite(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import cacheParams.{setWidth, wayWidth}
    val all  = Bool()
    val set  = UInt(setWidth.W)
    val way  = UInt(wayWidth.W)
    val data = Bool()
  }

  class ICacheTagWrite(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import commonParams.{paddrWidth}
    import cacheParams.{setWidth, wayWidth, blockWidth}
    private val tagWidth = paddrWidth - setWidth - blockWidth

    val set  = UInt(setWidth.W)
    val way  = UInt(wayWidth.W)
    val data = UInt(tagWidth.W)
  }

  class ICacheDataWrite(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import cacheParams.{setWidth, wayWidth, blockBits}
    val set  = UInt(setWidth.W)
    val way  = UInt(wayWidth.W)
    val data = UInt(blockBits.W)
  }

  type ICacheReq  = ICacheStage0Req
  type ICacheResp = ICacheStage1Resp
}

import ICache._

class ICacheStage0(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Module {
  import cacheParams.{setWidth, wayWidth, blockWidth}
  val io = IO(new StageBundle(1, 1, new ICacheStage0Req, new ICacheStage0Resp) {
    def readReq      = req(0)
    def sendReq      = resp(0)
    val cacheReadReq = Valid(UInt(setWidth.W))
  })

  io.readReq.ready      := io.sendReq.ready
  io.sendReq.valid      := io.readReq.valid
  io.sendReq.bits.vaddr := io.readReq.bits.vaddr
  io.sendReq.bits.cacop := io.readReq.bits.cacop
  io.cacheReadReq.bits  := getSet(io.readReq.bits.vaddr)
  io.cacheReadReq.valid := io.readReq.valid && io.sendReq.ready
}

class ICacheStage1(implicit commonParams: CommonParameters, cacheParams: CacheParameters, axiParams: AXIBundleParameters) extends Module {
  import commonParams.{vaddrWidth, paddrWidth}
  import cacheParams._
  private val tagWidth = paddrWidth - setWidth - blockWidth
  private val burstLen = blockBits / axiParams.dataBits

  val io = IO(new StageBundle(1, 1, new ICacheStage1Req, new ICacheStage1Resp) {
    val axi        = new AXIBundle(axiParams)
    val validWrite = Valid(new ICacheValidWrite)
    val tagWrite   = Valid(new ICacheTagWrite)
    val dataWrite  = Valid(new ICacheDataWrite)
    def opReq      = req(0)
    def readResp   = resp(0)
  })

  val op       = io.opReq.bits
  val vaddr    = op.vaddr
  val paddr    = op.paddr
  val set      = getSet(paddr)
  val tag      = getTag(paddr)
  val cacop    = op.cacop
  val wayValid = op.wayValid
  val wayTag   = op.wayTag
  val wayData  = op.wayData
  val isRead   = cacop === CACOP_HIT_READ.asUInt
  val isFlush  = cacop === CACOP_FLUSH.asUInt
  val isIdxInv = cacop === CACOP_IDX_INV.asUInt
  val isHitInv = cacop === CACOP_HIT_INV.asUInt

  val sHandleReq :: sSendBusReq :: sReadBusResp :: sFlushBusReq :: sFlushBusResp :: sWriteBack :: sSendReadResp :: Nil = Enum(7)

  val state     = RegInit(sHandleReq)
  val nextState = WireDefault(sHandleReq)
  val hit       = Wire(Bool())

  nextState := MuxLookup(state, sHandleReq)(
    Seq(
      sHandleReq -> Mux(io.opReq.valid && isRead && !hit, sSendBusReq, sHandleReq),
      sSendBusReq -> Mux(
        io.opReq.valid,
        Mux(io.axi.ar.ready, sReadBusResp, sSendBusReq),
        Mux(io.axi.ar.ready, sFlushBusResp, sFlushBusReq),
      ),
      sReadBusResp -> Mux(
        io.opReq.valid,
        Mux(io.axi.r.valid && io.axi.r.bits.last.asBool, sWriteBack, sReadBusResp),
        Mux(io.axi.r.valid && io.axi.r.bits.last.asBool, sHandleReq, sFlushBusResp),
      ),
      sFlushBusReq  -> Mux(io.axi.ar.ready, sFlushBusResp, sFlushBusReq),
      sFlushBusResp -> Mux(io.axi.r.valid && io.axi.r.bits.last.asBool, sHandleReq, sFlushBusResp),
      sWriteBack    -> Mux(io.opReq.valid, sSendReadResp, sHandleReq),
      sSendReadResp -> Mux(io.opReq.valid, Mux(io.readResp.ready, sHandleReq, sSendBusReq), sHandleReq),
    ),
  )
  state := nextState

  val matched = PriorityEncoder(wayTag.map(tag === _))
  val data    = wayData(matched)
  hit := wayValid(matched)

  val random        = if (nWays == 1) 0.U else GaloisLFSR.maxPeriod(wayWidth)
  val replacedSel   = RegEnable(Mux(wayValid.contains(false.B), OHToUInt(wayValid.map(!_)), random), io.axi.ar.fire)
  val lineData      = Reg(Vec(burstLen, UInt(axiParams.dataBits.W)))
  val (burstCnt, _) = Counter(0 until burstLen, io.axi.r.valid, io.axi.ar.fire)
  lineData(burstCnt) := Mux(io.axi.r.valid, io.axi.r.bits.data, lineData(burstCnt))

  io.opReq.ready := MuxLookup(state, false.B)(
    Seq(
      sHandleReq    -> ((isRead && hit && io.readResp.ready) || isFlush || isIdxInv || isHitInv),
      sSendReadResp -> io.readResp.ready,
    ),
  )

  io.readResp.valid := MuxLookup(state, false.B)(
    Seq(
      sHandleReq    -> (io.opReq.valid && isRead && hit),
      sSendReadResp -> io.opReq.valid,
    ),
  )
  io.readResp.bits.data      := Mux(state === sSendReadResp, lineData.asUInt, data)
  io.readResp.bits.exception := false.B

  val idxSet = vaddr(blockWidth + setWidth - 1, blockWidth)
  val idxWay = vaddr.tail(wayWidth)
  io.validWrite.valid := MuxLookup(state, false.B)(
    Seq(
      sHandleReq -> (io.opReq.valid && ((isHitInv && hit) || isFlush || isIdxInv)),
      sWriteBack -> (io.opReq.valid),
    ),
  )
  io.validWrite.bits.all  := isFlush
  io.validWrite.bits.set  := Mux(isIdxInv, idxSet, set)
  io.validWrite.bits.way  := Mux(isIdxInv, idxWay, Mux(isHitInv, matched, replacedSel))
  io.validWrite.bits.data := isRead

  io.tagWrite.valid     := io.opReq.valid && (state === sWriteBack)
  io.tagWrite.bits.set  := set
  io.tagWrite.bits.way  := replacedSel
  io.tagWrite.bits.data := tag

  io.dataWrite.valid     := io.opReq.valid && (state === sWriteBack)
  io.dataWrite.bits.set  := set
  io.dataWrite.bits.way  := replacedSel
  io.dataWrite.bits.data := lineData.asUInt

  io.axi.ar.valid     := (state === sSendBusReq) || (state === sFlushBusReq)
  io.axi.ar.bits.addr := paddr
  io.axi.ar.bits.id   := id.U
  io.axi.ar.bits.len  := (burstLen - 1).U

  io.axi.ar.bits.size  := log2Ceil(axiParams.dataBits / 8).U
  io.axi.ar.bits.burst := AXIParameters.BURST_INCR
  io.axi.ar.bits.lock  := 0.U
  io.axi.ar.bits.cache := 0.U
  io.axi.ar.bits.prot  := 0.U

  io.axi.r.ready := (state === sReadBusResp) || (state === sFlushBusResp)

  io.axi.aw.valid := false.B
  io.axi.aw.bits  := DontCare

  io.axi.w.valid := false.B
  io.axi.w.bits  := DontCare

  io.axi.b.ready := false.B
}

class ICache(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Module {
  import commonParams.{vaddrWidth, paddrWidth}
  import cacheParams._
  private val tagWidth = paddrWidth - setWidth - blockWidth

  val io = IO(new Bundle {
    val readReq    = Flipped(Valid(UInt(setWidth.W)))
    val cacheValid = Output(Vec(nSets, Vec(nWays, Bool())))
    val wayTag     = Output(Vec(nWays, UInt(tagWidth.W)))
    val wayData    = Output(Vec(nWays, UInt(blockBits.W)))
    val validWrite = Flipped(Valid(new ICacheValidWrite))
    val tagWrite   = Flipped(Valid(new ICacheTagWrite))
    val dataWrite  = Flipped(Valid(new ICacheDataWrite))
  })

  val cacheValid = RegInit(VecInit.fill(nSets, nWays)(false.B))
  val cacheTag   = SyncReadMem(nSets, Vec(nWays, UInt(tagWidth.W)))
  val cacheData  = Seq.tabulate(nBanks) { _ => SyncReadMem(nSets, Vec(nWays, UInt(bankBytes.W))) }

  val validWriteEn = io.validWrite.valid
  val validWrite   = io.validWrite.bits
  for (set <- 0 until nSets) {
    for (way <- 0 until nWays) {
      val v  = cacheValid(set)(way)
      val we = validWriteEn && ((validWrite.set === set.U && validWrite.way === way.U) || validWrite.all)
      cacheValid(set)(way) := Mux(we, validWrite.data, v)
    }
  }

  if (!singlePorted) {
    val tagWriteEn   = io.tagWrite.valid
    val tagWrite     = io.tagWrite.bits
    val tagWriteData = WireDefault(VecInit.fill(nWays)(tagWrite.data))
    cacheTag.write(tagWrite.set, tagWriteData, (UIntToOH(tagWrite.way) & Fill(wayWidth, tagWriteEn)).asBools)

    val dataWriteEn = io.dataWrite.valid
    val dataWrite   = io.dataWrite.bits
    for (i <- 0 until nBanks) {
      val dataWriteData = WireDefault(VecInit.fill(nWays)(dataWrite.data(bankBits * (i + 1) - 1, bankBits * i)))
      cacheData(i).write(dataWrite.set, dataWriteData, (UIntToOH(dataWrite.way) & Fill(wayWidth, dataWriteEn)).asBools)
    }
  }

  val wayTag = if (singlePorted) {
    val tagWriteEn   = io.tagWrite.valid
    val tagWrite     = io.tagWrite.bits
    val tagWriteData = WireDefault(VecInit.fill(nWays)(tagWrite.data))
    cacheTag.readWrite(
      Mux(tagWriteEn, tagWrite.set, io.readReq.bits),
      tagWriteData,
      (UIntToOH(tagWrite.way) & Fill(wayWidth, tagWriteEn)).asBools,
      io.readReq.valid || tagWriteEn,
      tagWriteEn,
    )
  } else { cacheTag.read(io.readReq.bits, io.readReq.valid) }
  val wayData = if (singlePorted) {
    val dataWriteEn = io.dataWrite.valid
    val dataWrite   = io.dataWrite.bits
    val result      = Wire(Vec(nWays, UInt(blockBits.W)))
    cacheData.zipWithIndex
      .map { case (cacheData, i) =>
        val dataWriteData = WireDefault(VecInit.fill(nWays)(dataWrite.data(bankBits * (i + 1) - 1, bankBits * i)))
        cacheData.readWrite(
          Mux(dataWriteEn, dataWrite.set, io.readReq.bits),
          dataWriteData,
          (UIntToOH(dataWrite.way) & Fill(wayWidth, dataWriteEn)).asBools,
          io.readReq.valid || dataWriteEn,
          dataWriteEn,
        )
      }
      .reduceLeft((left, right) => VecInit((left zip right).map { case (l, r) => Cat(r, l) }))
  } else {
    cacheData
      .map(_.read(io.readReq.bits, io.readReq.valid))
      .reduceLeft((left, right) => VecInit((left zip right).map { case (l, r) => Cat(r, l) }))
  }

  io.cacheValid := cacheValid
  io.wayTag     := wayTag
  io.wayData    := wayData
}
