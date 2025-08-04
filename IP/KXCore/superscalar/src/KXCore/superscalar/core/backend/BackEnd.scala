package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.Privilege._
import KXCore.common.peripheral._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core._
import KXCore.superscalar.core.frontend._
import scala.annotation.varargs

class BackEndIO(implicit params: CoreParameters) extends Bundle {
  import params.{commonParams, axiParams, frontendParams, backendParams}
  val axi         = new AXIBundle(axiParams)
  val dtlbReq     = Output(new TLBReq)
  val dtlbResp    = Input(new TLBResp)
  val fetchPacket = Flipped(Decoupled(new FetchBufferResp()))
  val getPC       = Flipped(Vec(3, new GetPCFromFtqIO))
  val commit = Valid(new Bundle {
    val ftqIdx   = UInt(log2Ceil(frontendParams.ftqNum).W)
    val brUpdate = Valid(new BrUpdateInfo)
  })
  val debug = Output(new Bundle {
    val regs        = Vec(backendParams.lregNum, UInt(commonParams.dataWidth.W))
    val commit_uops = Vec(backendParams.coreWidth, Valid(new MicroOp))
  })
}

class BackEnd(implicit params: CoreParameters) extends Module {
  import params.{commonParams, frontendParams, backendParams}
  import backendParams.{coreWidth, issueParams, pregNum, memIQParams, unqIQParams, intIQParams}

  val io = IO(new BackEndIO)

  val decoder         = Module(new Decoder)
  val renameMapTable  = Module(new RenameMapTable(true))
  val renameFreeList  = Module(new RenameFreeList(coreWidth, coreWidth))
  val renameBusyTable = Module(new RenameBusyTable(true))
  val rob             = Module(new ReorderBuffer)
  val dispatcher      = Module(new BasicDispatcher)
  // val memIssUnit      = Module(new IssueUnitCollapsing(memIQParams))
  // val unqIssUnit = Module(new IssueUnitCollapsing(unqIQParams))
  val intIssUnit  = Module(new IssueUnitCollapsing(intIQParams))
  val aluExeUnits = Seq.fill(intIQParams.issueWidth)(Module(new ALUExeUnit))
  val regFile     = Module(new FullyPortedRF(pregNum, aluExeUnits.map(_.nReaders).sum, aluExeUnits.length))

  val flush = Wire(Bool())

  renameMapTable.io.rollback := flush
  renameFreeList.io.rollback := flush
  // memIssUnit.io.flush := flush
  // unqIssUnit.io.flush := flush
  intIssUnit.io.flush := flush
  aluExeUnits.foreach(unit => unit.io_kill := flush)

  intIssUnit.io.fu_types := VecInit(aluExeUnits.map(_.io_fu_types))

  // decode & rename
  val decData = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  decData.valid        := io.fetchPacket.valid
  io.fetchPacket.ready := decData.ready
  for (i <- 0 until coreWidth) {
    decoder.io.req(i)     := io.fetchPacket.bits.uops(i).bits
    decData.bits(i).valid := io.fetchPacket.bits.uops(i).valid
    decData.bits(i).bits  := decoder.io.resp(i)

    renameMapTable.io.mapReqs(i).ldst := decData.bits(i).bits.ldst
    renameMapTable.io.mapReqs(i).lrs1 := decData.bits(i).bits.lrs1
    renameMapTable.io.mapReqs(i).lrs2 := decData.bits(i).bits.lrs2
    decData.bits(i).bits.stalePdst    := renameMapTable.io.mapResps(i).stalePdst
    decData.bits(i).bits.prs1         := renameMapTable.io.mapResps(i).prs1
    decData.bits(i).bits.prs2         := renameMapTable.io.mapResps(i).prs2
  }

  val decToRen = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  PipeConnect(Some(flush), decData, decToRen)

  // rename & dispatch
  // 可能存在 uniq 指令 需要 rob 为空时入队，此时 disData 可能部分握手
  val disUopReady   = Wire(UInt(coreWidth.W))
  val disUopFire    = Wire(UInt(coreWidth.W))
  val disUopFireReg = RegInit(0.U(coreWidth.W))
  disUopFireReg := Mux(decToRen.ready, 0.U, disUopFire)

  val disData = Wire(Decoupled(Vec(coreWidth, Valid(new MicroOp))))
  disData.valid  := decToRen.valid
  decToRen.ready := disData.ready
  disData.ready  := VecInit(decToRen.bits.map(_.valid)).asUInt === disUopFire || flush
  var dis_valid_not_ready = false.B
  for (i <- 0 until coreWidth) {
    renameFreeList.io.allocPregs(i).ready := disData.bits(i).valid && disData.bits(i).bits.ldst =/= 0.U &&
      disUopReady(i)

    renameMapTable.io.renRemapReqs(i).valid := disData.bits(i).valid && disUopReady(i) &&
      disData.bits(i).bits.ldst =/= 0.U && renameFreeList.io.allocPregs(i).valid
    renameMapTable.io.renRemapReqs(i).ldst := disData.bits(i).bits.ldst
    renameMapTable.io.renRemapReqs(i).pdst := disData.bits(i).bits.pdst

    renameBusyTable.io.uopReqs(i)    := disData.bits(i).bits
    renameBusyTable.io.rebusyReqs(i) := disData.bits(i).valid

    rob.io.alloc(i).ready := disData.bits(i).valid && disUopReady(i)
    rob.io.alloc(i).uop   := disData.bits(i).bits

    disData.bits(i).valid := decToRen.valid && decToRen.bits(i).valid && !disUopFireReg(i) &&
      (renameFreeList.io.allocPregs(i).valid || disData.bits(i).bits.ldst === 0.U) &&
      rob.io.alloc(i).valid
    disData.bits(i).bits        := decToRen.bits(i).bits
    disData.bits(i).bits.pdst   := renameFreeList.io.allocPregs(i).bits
    disData.bits(i).bits.robIdx := rob.io.alloc(i).idx
    for (j <- 0 until i) {
      when(disData.bits(j).valid) {
        when(disData.bits(j).bits.ldst === disData.bits(i).bits.ldst) {
          disData.bits(i).bits.stalePdst := disData.bits(j).bits.pdst
        }
        when(disData.bits(j).bits.ldst === disData.bits(i).bits.lrs1) {
          disData.bits(i).bits.prs1 := disData.bits(j).bits.pdst
        }
        when(disData.bits(j).bits.ldst === disData.bits(i).bits.lrs2) {
          disData.bits(i).bits.prs2 := disData.bits(j).bits.pdst
        }
      }
    }
    disData.bits(i).bits.prs1Busy := renameBusyTable.io.busyResps(i).prs1Busy
    disData.bits(i).bits.prs2Busy := renameBusyTable.io.busyResps(i).prs2Busy

    val dis_valid_not_ready_yet = dis_valid_not_ready

    dis_valid_not_ready = disData.bits(i).valid && !disUopReady(i)
    dispatcher.io.ren_uops(i).valid := disData.bits(i).valid && !dis_valid_not_ready_yet
    dispatcher.io.ren_uops(i).bits  := disData.bits(i).bits
  }
  disUopReady := VecInit(dispatcher.io.ren_uops.map(_.ready)).asUInt
  disUopFire  := disUopFireReg | (disUopReady & VecInit(disData.bits.map(_.valid)).asUInt)

  // issue
  dispatcher.io.dis_uops(0).foreach { dis =>
    dis.ready := true.B
  }
  dispatcher.io.dis_uops(1).foreach { dis =>
    dis.ready := true.B
  }
  dispatcher.io.dis_uops(2) <> intIssUnit.io.dis_uops

  // execute
  intIssUnit.io.iss_uops zip aluExeUnits map { case (iss_uop, exu) => iss_uop <> exu.io_iss_uop }

  val ftq_port_issued = Array.fill(2) { false.B }
  val ftq_port_addrs  = Array.fill(2) { 0.U(frontendParams.ftqIdxWidth.W) }
  for (i <- 0 until aluExeUnits.length) {
    aluExeUnits(i).io_read_reqs(0)  <> regFile.io.read_reqs(2 * i)
    aluExeUnits(i).io_read_reqs(1)  <> regFile.io.read_reqs(2 * i + 1)
    aluExeUnits(i).io_read_resps(0) <> regFile.io.read_resps(2 * i)
    aluExeUnits(i).io_read_resps(1) <> regFile.io.read_resps(2 * i + 1)
    for (w <- 0 until 2) {
      val req         = aluExeUnits(i).io_ftq_req(w)
      var read_issued = false.B
      val data_sel    = WireInit(0.U(2.W))
      for (j <- 0 until 2) {
        val issue_read = WireInit(false.B)
        val use_port   = WireInit(false.B)
        when(!read_issued && !ftq_port_issued(j) && req.valid) {
          issue_read := true.B
          use_port   := true.B
          data_sel   := UIntToOH(j.U)
        }
        val was_port_issued_yet = ftq_port_issued(j)
        ftq_port_issued(j) = use_port || ftq_port_issued(j)
        ftq_port_addrs(j) = ftq_port_addrs(j) | Mux(was_port_issued_yet || !use_port, 0.U, req.bits)
        read_issued = issue_read || read_issued
      }
      req.ready                     := read_issued
      aluExeUnits(i).io_ftq_resp(w) := Mux(data_sel(0), io.getPC(1).info, io.getPC(2).info)
    }
  }
  for (j <- 0 until 2) {
    io.getPC(j + 1).ftqIdx := ftq_port_addrs(j)
  }

  // write back
  (0 until aluExeUnits.length).foreach { i =>
    renameBusyTable.io.wbValids(i) := aluExeUnits(i).io_alu_resp.valid
    renameBusyTable.io.wbPdsts(i)  := aluExeUnits(i).io_alu_resp.bits.uop.pdst

    intIssUnit.io.wakeup_ports(i).valid := aluExeUnits(i).io_alu_resp.valid
    intIssUnit.io.wakeup_ports(i).bits  := aluExeUnits(i).io_alu_resp.bits.uop.pdst

    regFile.io.write_ports(i).valid := aluExeUnits(i).io_alu_resp.valid &&
      aluExeUnits(i).io_alu_resp.bits.uop.ldst =/= 0.U
    regFile.io.write_ports(i).bits.addr := aluExeUnits(i).io_alu_resp.bits.uop.pdst
    regFile.io.write_ports(i).bits.data := aluExeUnits(i).io_alu_resp.bits.data

    rob.io.write(i).valid       := aluExeUnits(i).io_alu_resp.valid
    rob.io.write(i).bits.uop    := aluExeUnits(i).io_alu_resp.bits.uop
    rob.io.write(i).bits.brInfo := aluExeUnits(i).io_alu_resp.bits.brInfo
  }

  // commit
  io.getPC(0).ftqIdx := 0.U
  for (i <- 0 until coreWidth) {
    renameMapTable.io.comRemapReqs(i).valid := rob.io.commit.valids(i) && rob.io.commit.uop(i).ldst =/= 0.U
    renameMapTable.io.comRemapReqs(i).ldst  := rob.io.commit.uop(i).ldst
    renameMapTable.io.comRemapReqs(i).pdst  := rob.io.commit.uop(i).pdst

    renameFreeList.io.dealloc(i).valid := rob.io.commit.valids(i) && rob.io.commit.uop(i).ldst =/= 0.U
    renameFreeList.io.dealloc(i).bits  := rob.io.commit.uop(i).stalePdst

    renameFreeList.io.despec(i).valid := rob.io.commit.valids(i) && rob.io.commit.uop(i).ldst =/= 0.U
    renameFreeList.io.despec(i).bits  := rob.io.commit.uop(i).pdst
  }
  io.commit.valid         := rob.io.commit.valids.reduce(_ || _)
  io.commit.bits.ftqIdx   := rob.io.commit.ftqIdx
  io.commit.bits.brUpdate := rob.io.commit.brInfo

  flush := io.commit.bits.brUpdate.valid && rob.io.commit.brInfo.bits.mispredict

  for (i <- 0 until backendParams.lregNum) {
    io.debug.regs(i) := regFile.io.debug(renameMapTable.io.debug(i))
  }
  (io.debug.commit_uops zip rob.io.commit.valids zip rob.io.commit.uop).map { case ((debug, v), uop) =>
    debug.valid := v
    debug.bits  := uop
  }

  io.axi          := DontCare
  io.axi.ar.valid := false.B
  io.axi.r.ready  := false.B
  io.axi.aw.valid := false.B
  io.axi.w.valid  := false.B
  io.axi.b.ready  := false.B

  io.dtlbReq         := DontCare
  io.dtlbReq.isWrite := false.B
  io.dtlbReq.vaddr   := 0.U

  dontTouch(decData)
  dontTouch(decToRen)
  dontTouch(disData)
  dontTouch(rob.io)
  dontTouch(dispatcher.io)
  dontTouch(intIssUnit.io)
  aluExeUnits.foreach(unit => dontTouch(unit.io_alu_resp))
}
