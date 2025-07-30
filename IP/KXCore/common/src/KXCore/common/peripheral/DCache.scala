package KXCore.common.peripheral

import chisel3._
import chisel3.util._
import chisel3.util.random._
import chisel3.experimental.dataview._
import KXCore.common._
import KXCore.common.peripheral._
import KXCore.common.Privilege._
import KXCore.common.Privilege.CACOP._

object DCache {
  def getSet(vaddr: UInt)(implicit cacheParams: CacheParameters): UInt = {
    vaddr(cacheParams.setWidth + cacheParams.blockWidth - 1, cacheParams.blockWidth)
  }

  def getTag(paddr: UInt)(implicit commonParams: CommonParameters, cacheParams: CacheParameters): UInt = {
    paddr.head(commonParams.paddrWidth - cacheParams.setWidth - cacheParams.blockWidth)
  }

  def getOffset(addr: UInt)(implicit cacheParams: CacheParameters): UInt = {
    addr(cacheParams.blockWidth - 1, 0)
  }

  class DCacheStageReq(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import commonParams.{paddrWidth, vaddrWidth}
    import cacheParams.{blockBits, blockWidth, setWidth, nSets, nWays}
    private val tagWidth = paddrWidth - setWidth - blockWidth
    val vaddr            = UInt(vaddrWidth.W)
    val paddr            = UInt(paddrWidth.W)
    val cacop            = UInt(CACOP.getWidth.W)
    val isWrite          = Bool()
    val writeData        = UInt(commonParams.xlen.W)
    val writeMask        = UInt((commonParams.xlen / 8).W)
    val wayValid         = Vec(nWays, Bool())
    val wayDirty         = Vec(nWays, Bool())
    val wayTag           = Vec(nWays, UInt(tagWidth.W))
    val wayData          = Vec(nWays, UInt(blockBits.W))
  }

  class DCacheStageResp(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    val data      = UInt(commonParams.xlen.W)
    val exception = Bool()
  }

  class DCacheValidWrite(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import cacheParams.{setWidth, wayWidth}
    val all  = Bool()
    val set  = UInt(setWidth.W)
    val way  = UInt(wayWidth.W)
    val data = Bool()
  }

  class DCacheDirtyWrite(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import cacheParams.{setWidth, wayWidth}
    val set  = UInt(setWidth.W)
    val way  = UInt(wayWidth.W)
    val data = Bool()
  }

  class DCacheTagWrite(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import commonParams.{paddrWidth}
    import cacheParams.{setWidth, wayWidth, blockWidth}
    private val tagWidth = paddrWidth - setWidth - blockWidth

    val set  = UInt(setWidth.W)
    val way  = UInt(wayWidth.W)
    val data = UInt(tagWidth.W)
  }

  class DCacheDataWrite(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Bundle {
    import cacheParams.{setWidth, wayWidth, blockBits}
    val set  = UInt(setWidth.W)
    val way  = UInt(wayWidth.W)
    val data = UInt(blockBits.W)
    val mask = UInt((blockBits / 8).W)
  }
}

import DCache._

class DCacheStage0to1(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Module {
  import commonParams.{vaddrWidth, paddrWidth}
  import cacheParams._
  private val tagWidth = paddrWidth - setWidth - blockWidth

  val io = IO(new Bundle {
    val flush = Input(Bool())
    val req   = Flipped(Decoupled(UInt(vaddrWidth.W)))
    val resp = Decoupled(new Bundle {
      val cacheValid = Vec(nSets, Vec(nWays, Bool()))
      val cacheDirty = Vec(nSets, Vec(nWays, Bool()))
      val wayTag     = Vec(nWays, UInt(tagWidth.W))
    })
    val keepRead   = Input(UInt(vaddrWidth.W))
    val validWrite = Flipped(Valid(new DCacheValidWrite))
    val dirtyWrite = Flipped(Valid(new DCacheDirtyWrite))
    val tagWrite   = Flipped(Valid(new DCacheTagWrite))
  })

  val cacheValid = RegInit(VecInit.fill(nSets, nWays)(false.B))
  val cacheDirty = RegInit(VecInit.fill(nSets, nWays)(false.B))
  val cacheTag   = SyncReadMem(nSets, Vec(nWays, UInt(tagWidth.W)))
  val en         = RegInit(false.B)
  val nextEn     = WireDefault(en & ~io.resp.ready)
  en            := Mux(io.req.ready, io.req.valid, nextEn)
  io.req.ready  := (nextEn === 0.U) || io.flush
  io.resp.valid := en && !io.flush

  val readEn  = io.req.fire || nextEn
  val readSet = getSet(Mux(io.req.fire, io.req.bits, io.keepRead))

  val validWriteEn = io.validWrite.valid
  val validWrite   = io.validWrite.bits
  val dirtyWriteEn = io.dirtyWrite.valid
  val dirtyWrite   = io.dirtyWrite.bits
  for (set <- 0 until nSets) {
    for (way <- 0 until nWays) {
      val v  = cacheValid(set)(way)
      val validWe = validWriteEn && ((validWrite.set === set.U && validWrite.way === way.U) || validWrite.all)
      cacheValid(set)(way) := Mux(validWe, validWrite.data, v)
      
      val d  = cacheDirty(set)(way)
      val dirtyWe = dirtyWriteEn && (dirtyWrite.set === set.U && dirtyWrite.way === way.U)
      cacheDirty(set)(way) := Mux(dirtyWe, dirtyWrite.data, d)
    }
  }

  if (!singlePorted) {
    val tagWriteEn   = io.tagWrite.valid
    val tagWrite     = io.tagWrite.bits
    val tagWriteData = WireDefault(VecInit.fill(nWays)(tagWrite.data))
    cacheTag.write(tagWrite.set, tagWriteData, (UIntToOH(tagWrite.way) & Fill(wayWidth, tagWriteEn)).asBools)
  }

  val wayTag = if (singlePorted) {
    val tagWriteEn   = io.tagWrite.valid
    val tagWrite     = io.tagWrite.bits
    val tagWriteData = WireDefault(VecInit.fill(nWays)(tagWrite.data))
    cacheTag.readWrite(
      Mux(tagWriteEn, tagWrite.set, readSet),
      tagWriteData,
      (UIntToOH(tagWrite.way) & Fill(wayWidth, tagWriteEn)).asBools,
      readEn || tagWriteEn,
      tagWriteEn,
    )
  } else {
    cacheTag.read(readSet, io.req.fire)
  }

  io.resp.bits.cacheValid := cacheValid
  io.resp.bits.cacheDirty := cacheDirty
  io.resp.bits.wayTag     := wayTag
}

class DCacheStage1(implicit commonParams: CommonParameters, cacheParams: CacheParameters, axiParams: AXIBundleParameters) extends Module {
  import commonParams.{vaddrWidth, paddrWidth, xlen}
  import cacheParams._
  private val tagWidth = paddrWidth - setWidth - blockWidth
  private val burstLen = blockBits / axiParams.dataBits

  val io = IO(new Bundle {
    val axi        = new AXIBundle(axiParams)
    val validWrite = Valid(new DCacheValidWrite)
    val dirtyWrite = Valid(new DCacheDirtyWrite)
    val tagWrite   = Valid(new DCacheTagWrite)
    val dataWrite  = Valid(new DCacheDataWrite)
    val req = Flipped(Decoupled(new Bundle {
      val vaddr      = UInt(vaddrWidth.W)
      val paddr      = UInt(paddrWidth.W)
      val cacop      = UInt(CACOP.getWidth.W)
      val isWrite    = Bool()
      val writeData  = UInt(xlen.W)
      val writeMask  = UInt((xlen / 8).W)
      val cacheValid = Vec(nSets, Vec(nWays, Bool()))
      val cacheDirty = Vec(nSets, Vec(nWays, Bool()))
      val wayTag     = Vec(nWays, UInt(tagWidth.W))
    }))
    val resp = Decoupled(new Bundle {
      val set       = UInt(setWidth.W)
      val way       = UInt(wayWidth.W)
      val exception = Bool()
    })
  })

  val bits     = io.req.bits
  val vaddr    = bits.vaddr
  val paddr    = bits.paddr
  val set      = getSet(paddr)
  val tag      = getTag(paddr)
  val offset   = getOffset(paddr)
  val cacop    = bits.cacop
  val isWrite  = bits.isWrite
  val writeData = bits.writeData
  val writeMask = bits.writeMask
  val wayValid = bits.cacheValid(set)
  val wayDirty = bits.cacheDirty(set)
  val wayTag   = bits.wayTag
  val isRead   = cacop === CACOP_HIT_READ.asUInt
  val isFlush  = cacop === CACOP_FLUSH.asUInt
  val isIdxInv = cacop === CACOP_IDX_INV.asUInt
  val isHitInv = cacop === CACOP_HIT_INV.asUInt

  val sHandleReq :: sSendBusReadReq :: sReadBusResp :: sSendBusWriteReq :: sWriteBusReq :: sWriteBusResp ::
    sFlushBusReq :: sFlushBusResp :: sWriteBack :: sSendReadResp :: Nil = Enum(10)

  val state     = RegInit(sHandleReq)
  val nextState = WireDefault(sHandleReq)
  val hit       = Wire(Bool())

  nextState := MuxLookup(state, sHandleReq)(
    Seq(
      sHandleReq -> Mux(
        io.req.valid,
        Mux(
          (isRead || isWrite) && !hit,
          Mux(needWriteBack, sSendBusWriteReq, sSendBusReadReq),
          sHandleReq
        ),
        sHandleReq
      ),
      sSendBusReadReq -> Mux(
        io.req.valid,
        Mux(io.axi.ar.ready, sReadBusResp, sSendBusReadReq),
        Mux(io.axi.ar.ready, sFlushBusResp, sFlushBusReq),
      ),
      sReadBusResp -> Mux(
        io.req.valid,
        Mux(io.axi.r.valid && io.axi.r.bits.last.asBool, sWriteBack, sReadBusResp),
        Mux(io.axi.r.valid && io.axi.r.bits.last.asBool, sHandleReq, sFlushBusResp),
      ),
      sSendBusWriteReq -> Mux(io.axi.aw.ready, sWriteBusReq, sSendBusWriteReq),
      sWriteBusReq -> Mux(io.axi.w.ready && writeBackCnt === (burstLen - 1).U, sWriteBusResp, sWriteBusReq),
      sWriteBusResp -> Mux(io.axi.b.valid, sSendBusReadReq, sWriteBusResp),
      sFlushBusReq  -> Mux(io.axi.ar.ready, sFlushBusResp, sFlushBusReq),
      sFlushBusResp -> Mux(io.axi.r.valid && io.axi.r.bits.last.asBool, sHandleReq, sFlushBusResp),
      sWriteBack    -> Mux(io.req.valid, sSendReadResp, sHandleReq),
      sSendReadResp -> Mux(io.req.valid, Mux(io.resp.ready, sHandleReq, sSendBusReadReq), sHandleReq),
    ),
  )
  state := nextState

  val matched = PriorityEncoder(wayTag.map(tag === _))
  hit := wayValid(matched)

  val random        = if (nWays == 1) 0.U else GaloisLFSR.maxPeriod(wayWidth)
  val replacedSel   = RegEnable(Mux(wayValid.contains(false.B), PriorityEncoder(wayValid.map(!_)), random), io.axi.ar.fire || io.axi.aw.fire)
  val needWriteBack = wayValid(replacedSel) && wayDirty(replacedSel)
  val writeBackAddr = Cat(wayTag(replacedSel), set, 0.U(blockWidth.W))

  val lineData      = Reg(Vec(burstLen, UInt(axiParams.dataBits.W)))
  val (burstCnt, _) = Counter(0 until burstLen, io.axi.r.valid, io.axi.ar.fire)
  val (writeBackCnt, _) = Counter(0 until burstLen, io.axi.w.ready, io.axi.aw.fire)
  lineData(burstCnt) := Mux(io.axi.r.valid, io.axi.r.bits.data, lineData(burstCnt))

  io.req.ready := MuxLookup(state, false.B)(
    Seq(
      sHandleReq    -> (((isRead || isWrite) && hit && io.resp.ready) || isFlush || isIdxInv || isHitInv),
      sSendReadResp -> io.resp.ready,
    ),
  )

  io.resp.valid := MuxLookup(state, false.B)(
    Seq(
      sHandleReq    -> (io.req.valid && (isRead || isWrite) && hit),
      sSendReadResp -> io.req.valid,
    ),
  )
  io.resp.bits.set       := set
  io.resp.bits.way       := Mux(state === sSendReadResp, replacedSel, matched)
  io.resp.bits.exception := false.B

  val idxSet = vaddr(blockWidth + setWidth - 1, blockWidth)
  val idxWay = vaddr.tail(wayWidth)
  io.validWrite.valid := MuxLookup(state, false.B)(
    Seq(
      sHandleReq -> (io.req.valid && ((isHitInv && hit) || isFlush || isIdxInv)),
      sWriteBack -> (io.req.valid),
    ),
  )
  io.validWrite.bits.all  := isFlush
  io.validWrite.bits.set  := Mux(isIdxInv, idxSet, set)
  io.validWrite.bits.way  := Mux(isIdxInv, idxWay, Mux(isHitInv, matched, replacedSel))
  io.validWrite.bits.data := (isRead || isWrite)

  io.dirtyWrite.valid     := io.req.valid && (state === sWriteBack) && isWrite
  io.dirtyWrite.bits.set  := set
  io.dirtyWrite.bits.way  := replacedSel
  io.dirtyWrite.bits.data := true.B

  io.tagWrite.valid     := io.req.valid && (state === sWriteBack)
  io.tagWrite.bits.set  := set
  io.tagWrite.bits.way  := replacedSel
  io.tagWrite.bits.data := tag

  val blockMask = WireDefault(0.U((blockBits / 8).W))
  val offsetBytes = offset >> log2Ceil(xlen / 8)
  val writeMaskShifted = writeMask << offsetBytes
  when(isWrite && hit) {
    blockMask := writeMaskShifted
  }.elsewhen(state === sWriteBack) {
    blockMask := Fill(blockBits / 8, 1.U)
  }

  io.dataWrite.valid     := io.req.valid && ((state === sWriteBack) || (isWrite && hit))
  io.dataWrite.bits.set  := set
  io.dataWrite.bits.way  := Mux(state === sWriteBack, replacedSel, matched)
  io.dataWrite.bits.data := Mux(state === sWriteBack, lineData.asUInt, 
    Mux(isWrite && hit, 
      (lineData.asUInt & ~(Fill(xlen, 1.U) << (offset * 8.U))) | (writeData << (offset * 8.U)),
      lineData.asUInt
    )
  )
  io.dataWrite.bits.mask := blockMask

  io.axi.ar.valid     := (state === sSendBusReadReq) || (state === sFlushBusReq)
  io.axi.ar.bits.addr := paddr
  io.axi.ar.bits.id   := id.U
  io.axi.ar.bits.len  := (burstLen - 1).U
  io.axi.ar.bits.size  := log2Ceil(axiParams.dataBits / 8).U
  io.axi.ar.bits.burst := AXIParameters.BURST_INCR
  io.axi.ar.bits.lock  := 0.U
  io.axi.ar.bits.cache := 0.U
  io.axi.ar.bits.prot  := 0.U

  io.axi.r.ready := (state === sReadBusResp) || (state === sFlushBusResp)

  io.axi.aw.valid     := (state === sSendBusWriteReq)
  io.axi.aw.bits.addr := writeBackAddr
  io.axi.aw.bits.id   := id.U
  io.axi.aw.bits.len  := (burstLen - 1).U
  io.axi.aw.bits.size := log2Ceil(axiParams.dataBits / 8).U
  io.axi.aw.bits.burst := AXIParameters.BURST_INCR
  io.axi.aw.bits.lock  := 0.U
  io.axi.aw.bits.cache := 0.U
  io.axi.aw.bits.prot  := 0.U

  io.axi.w.valid := (state === sWriteBusReq)
  io.axi.w.bits.data := lineData(writeBackCnt)
  io.axi.w.bits.strb := Fill(axiParams.dataBits / 8, 1.U)
  io.axi.w.bits.last := writeBackCnt === (burstLen - 1).U

  io.axi.b.ready := (state === sWriteBusResp)
}

class DCacheStage1to2(implicit commonParams: CommonParameters, cacheParams: CacheParameters) extends Module {
  import commonParams.{vaddrWidth, paddrWidth, xlen}
  import cacheParams._
  private val tagWidth = paddrWidth - setWidth - blockWidth

  val io = IO(new Bundle {
    val flush = Input(Bool())
    val req = Flipped(Decoupled(new Bundle {
      val set       = UInt(setWidth.W)
      val way       = UInt(wayWidth.W)
      val offset    = UInt(blockWidth.W)
      val exception = Bool()
    }))
    val resp = Decoupled(new Bundle {
      val data      = UInt(xlen.W)
      val exception = Bool()
    })
    val keepRead = Input(new Bundle {
      val set    = UInt(setWidth.W)
      val way    = UInt(wayWidth.W)
      val offset = UInt(blockWidth.W)
    })
    val dataWrite = Flipped(Valid(new DCacheDataWrite))
  })

  val cacheData = Seq.tabulate(nBanks) { _ =>
    (0 until nWays).map { _ =>
      SyncReadMem(nSets, UInt(bankBits.W))
    }
  }
  val en     = RegInit(false.B)
  val nextEn = WireDefault(en & ~io.resp.ready)
  en            := Mux(io.req.ready, io.req.valid, nextEn)
  io.req.ready  := (nextEn === 0.U) || io.flush
  io.resp.valid := en && !io.flush

  val readEn  = io.req.fire || nextEn
  val readSet = Mux(io.req.fire, io.req.bits.set, io.keepRead.set)
  val readWay = Mux(io.req.fire, io.req.bits.way, io.keepRead.way)
  val readOffset = Mux(io.req.fire, io.req.bits.offset, io.keepRead.offset)

  if (!singlePorted) {
    val dataWrite = io.dataWrite.bits
    for (i <- 0 until nBanks) {
      for (w <- 0 until nWays) {
        val dataWriteEn   = io.dataWrite.valid && (dataWrite.way === w.U)
        val dataWriteData = WireDefault(dataWrite.data(bankBits * (i + 1) - 1, bankBits * i))
        val dataWriteMask = dataWrite.mask(bankBits / 8 * (i + 1) - 1, bankBits / 8 * i)
        when(dataWriteEn && dataWriteMask.orR) {
          cacheData(i)(w).write(dataWrite.set, dataWriteData)
        }
      }
    }
  }

  val data = if (singlePorted) {
    val dataWrite = io.dataWrite.bits
    VecInit(
      cacheData.zipWithIndex.map { case (cacheDataWays, i) =>
        val dataWriteData = WireDefault(dataWrite.data(bankBits * (i + 1) - 1, bankBits * i))
        val dataWriteMask = dataWrite.mask(bankBits / 8 * (i + 1) - 1, bankBits / 8 * i)
        VecInit(cacheDataWays.zipWithIndex.map { case (cacheData, w) =>
          val dataWriteEn = io.dataWrite.valid && (dataWrite.way === w.U) && dataWriteMask.orR
          cacheData.readWrite(
            Mux(dataWriteEn, dataWrite.set, readSet),
            dataWriteData,
            readEn || dataWriteEn,
            dataWriteEn,
          )
        })(readWay)
      },
    ).asUInt
  } else {
    VecInit(
      cacheData.map { cacheDataBanks =>
        VecInit(cacheDataBanks.map(_.read(readSet, io.req.fire)))(readWay)
      },
    ).asUInt
  }

  // Extract the requested word from the cache line
  val wordOffset = readOffset >> log2Ceil(xlen / 8)
  val extractedData = (data >> (wordOffset * xlen.U))(xlen - 1, 0)

  io.resp.bits.exception := RegEnable(io.req.bits.exception, io.req.fire)
  io.resp.bits.data      := extractedData
}

class DCache(implicit commonParams: CommonParameters, cacheParams: CacheParameters, axiParams: AXIBundleParameters) extends Module {
  import commonParams.{vaddrWidth, paddrWidth, xlen}
  import cacheParams._
  private val tagWidth = paddrWidth - setWidth - blockWidth

  val io = IO(new Bundle {
    val flush = Input(new Bundle {
      val stage1 = Bool()
      val stage2 = Bool()
    })
    val axi = new AXIBundle(axiParams)
    val req = new Bundle {
      val stage0 = Flipped(Decoupled(new Bundle {
        val vaddr = UInt(vaddrWidth.W)
      }))
      val stage1 = Flipped(Decoupled(new Bundle {
        val vaddr     = UInt(vaddrWidth.W)
        val paddr     = UInt(paddrWidth.W)
        val cacop     = UInt(CACOP.getWidth.W)
        val isWrite   = Bool()
        val writeData = UInt(xlen.W)
        val writeMask = UInt((xlen / 8).W)
      }))
    }
    val resp = new Bundle {
      val stage2 = Decoupled(new Bundle {
        val data      = UInt(xlen.W)
        val exception = Bool()
      })
    }
  })

  val stage0to1 = Module(new DCacheStage0to1)
  val stage1    = Module(new DCacheStage1)
  val stage1to2 = Module(new DCacheStage1to2)

  stage0to1.io.flush := io.flush.stage1
  stage1to2.io.flush := io.flush.stage2

  stage0to1.io.req.valid := io.req.stage0.valid
  stage0to1.io.req.bits  := io.req.stage0.bits.vaddr
  io.req.stage0.ready    := stage0to1.io.req.ready
  stage0to1.io.keepRead  := io.req.stage1.bits.vaddr

  io.axi                        <> stage1.io.axi
  stage1.io.req.valid           := stage0to1.io.resp.valid && io.req.stage1.valid
  stage0to1.io.resp.ready       := stage1.io.req.ready
  io.req.stage1.ready           := stage1.io.req.ready
  stage1.io.req.bits.vaddr      := io.req.stage1.bits.vaddr
  stage1.io.req.bits.paddr      := io.req.stage1.bits.paddr
  stage1.io.req.bits.cacop      := io.req.stage1.bits.cacop
  stage1.io.req.bits.isWrite    := io.req.stage1.bits.isWrite
  stage1.io.req.bits.writeData  := io.req.stage1.bits.writeData
  stage1.io.req.bits.writeMask  := io.req.stage1.bits.writeMask
  stage1.io.req.bits.cacheValid := stage0to1.io.resp.bits.cacheValid
  stage1.io.req.bits.cacheDirty := stage0to1.io.resp.bits.cacheDirty
  stage1.io.req.bits.wayTag     := stage0to1.io.resp.bits.wayTag
  stage0to1.io.validWrite       := stage1.io.validWrite
  stage0to1.io.dirtyWrite       := stage1.io.dirtyWrite
  stage0to1.io.tagWrite         := stage1.io.tagWrite
  stage1to2.io.dataWrite        := stage1.io.dataWrite

  val stage1to2Keep = RegEnable(
    Cat(stage1.io.resp.bits.set, stage1.io.resp.bits.way, getOffset(io.req.stage1.bits.paddr)), 
    stage1.io.resp.fire
  )
  stage1to2.io.req.valid        := stage1.io.resp.valid
  stage1to2.io.req.bits.set     := stage1.io.resp.bits.set
  stage1to2.io.req.bits.way     := stage1.io.resp.bits.way
  stage1to2.io.req.bits.offset  := getOffset(io.req.stage1.bits.paddr)
  stage1to2.io.req.bits.exception := stage1.io.resp.bits.exception
  stage1.io.resp.ready          := stage1to2.io.req.ready
  
  stage1to2.io.keepRead.set     := stage1to2Keep(setWidth + wayWidth + blockWidth - 1, wayWidth + blockWidth)
  stage1to2.io.keepRead.way     := stage1to2Keep(wayWidth + blockWidth - 1, blockWidth)
  stage1to2.io.keepRead.offset  := stage1to2Keep(blockWidth - 1, 0)

  io.resp.stage2 <> stage1to2.io.resp
}
