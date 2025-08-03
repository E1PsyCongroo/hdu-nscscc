package KXCore.superscalar.core.backend

import scala.collection.mutable.{ArrayBuffer}
import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core._
import KXCore.superscalar.core.frontend._

abstract class ExecutionUnit(implicit params: CoreParameters) extends Module {
  def fu_types: UInt = 0.U(FUType.getWidth.W)
  def nReaders: Int  = 1
  require(nReaders > 0 && nReaders <= 2)

  val io_kill       = IO(Input(Bool()))
  val io_fu_types   = IO(Output(UInt(FUType.getWidth.W)))
  val io_iss_uop    = IO(Flipped(Decoupled(new MicroOp)))
  val io_read_reqs  = IO(Vec(nReaders, Decoupled(UInt(params.backendParams.pregWidth.W))))
  val io_read_resps = IO(Vec(nReaders, Input(UInt(params.commonParams.dataWidth.W))))

  val iss_uop_ext = ReadyValidIOExpand(io_iss_uop, 3)

  io_read_reqs(0).valid := iss_uop_ext.valid(0) && iss_uop_ext.bits.lrs1 =/= 0.U
  io_read_reqs(0).bits  := iss_uop_ext.bits.prs1
  if (nReaders == 2) {
    io_read_reqs(1).valid := iss_uop_ext.valid(0) && iss_uop_ext.bits.lrs2 =/= 0.U
    io_read_reqs(1).bits  := iss_uop_ext.bits.prs2
  }

  val stage0Regs = Wire(Decoupled(Vec(nReaders, UInt(params.commonParams.dataWidth.W))))
  stage0Regs.valid   := io_read_reqs.map(_.fire).reduce(_ && _)
  stage0Regs.bits(0) := io_read_resps(0)
  if (nReaders == 2) {
    stage0Regs.bits(1) := io_read_resps(1)
  }
  iss_uop_ext.ready(0) := stage0Regs.ready

  val stage0Uop = Wire(Decoupled(new MicroOp))
  stage0Uop.valid      := iss_uop_ext.valid(1)
  stage0Uop.bits       := iss_uop_ext.bits
  iss_uop_ext.ready(1) := stage0Uop.ready

  val stage0to1Regs = Wire(Decoupled(Vec(nReaders, UInt(params.commonParams.dataWidth.W))))
  PipeConnect(Some(io_kill), stage0Regs, stage0to1Regs)

  val stage0to1Uop = Wire(Decoupled(new MicroOp))
  PipeConnect(Some(io_kill), stage0Uop, stage0to1Uop)

  val stage1Regs = Wire(Decoupled(Vec(nReaders, UInt(params.commonParams.dataWidth.W))))
  stage1Regs.valid    := stage0to1Regs.valid
  stage1Regs.bits     := stage0to1Regs.bits
  stage0to1Regs.ready := stage1Regs.ready

  val stage1Uop = Wire(Decoupled(new MicroOp))
  stage1Uop.valid    := stage0to1Uop.valid
  stage1Uop.bits     := stage0to1Uop.bits
  stage0to1Uop.ready := stage1Uop.ready

  io_fu_types := fu_types
}

class MemExeUnit(implicit params: CoreParameters) extends ExecutionUnit {
  override def fu_types: UInt = FUType.FUT_MEM.asUInt
  override def nReaders       = 1
}

class UniqueExeUnit(
    val hasCSR: Boolean = false,
    val hasMul: Boolean = false,
    val hasDiv: Boolean = false,
)(implicit params: CoreParameters)
    extends ExecutionUnit {
  override def fu_types: UInt =
    (if (hasCSR) FUType.FUT_CSR.asUInt else 0.U) |
      (if (hasMul) FUType.FUT_MUL.asUInt else 0.U) |
      (if (hasDiv) FUType.FUT_DIV.asUInt else 0.U)
  override def nReaders = 2
}

class ALUExeUnit(implicit params: CoreParameters) extends ExecutionUnit {
  override def fu_types: UInt = FUType.FUT_ALU.asUInt | FUType.FUT_CFI.asUInt
  override def nReaders       = 2

  val io_ftq_req  = IO(Vec(2, Decoupled(UInt(params.frontendParams.ftqIdxWidth.W))))
  val io_ftq_resp = IO(Input(Vec(2, new FTQInfo)))

  io_ftq_req(0).valid := iss_uop_ext.valid(2) &&
    (iss_uop_ext.bits.op1Sel === OP1Type.OP1_PC.asUInt || iss_uop_ext.bits.cfiType =/= CFIType.CFI_NONE.asUInt)
  io_ftq_req(0).bits  := iss_uop_ext.bits.ftqIdx
  io_ftq_req(1).valid := iss_uop_ext.valid(2) && iss_uop_ext.bits.cfiType === CFIType.CFI_JIRL.asUInt
  io_ftq_req(1).bits  := WrapInc(iss_uop_ext.bits.ftqIdx, params.frontendParams.ftqNum)
  val stage0Ftq = Wire(Decoupled(io_ftq_resp.cloneType))
  stage0Ftq.valid      := (!io_ftq_req(0).valid || io_ftq_req(0).ready) && (!io_ftq_req(1).valid || io_ftq_req(1).ready)
  stage0Ftq.bits       := io_ftq_resp
  iss_uop_ext.ready(2) := stage0Ftq.ready

  val stage0to1Ftq = Wire(Decoupled(io_ftq_resp.cloneType))
  PipeConnect(Some(io_kill), stage0Ftq, stage0to1Ftq)

  val stage1Ftq = Wire(Decoupled(io_ftq_resp.cloneType))
  stage1Ftq.valid    := stage0to1Ftq.valid
  stage1Ftq.bits     := stage0to1Ftq.bits
  stage0to1Ftq.ready := stage1Ftq.ready

  val exe_req = Wire(new FuncUnitReq)
  exe_req.uop      := stage1Uop.bits
  exe_req.rs1_data := stage1Regs.bits(0)
  exe_req.rs2_data := stage1Regs.bits(1)
  exe_req.ftq_info := stage1Ftq.bits

  val alu = Module(new ALUUnit)
  alu.io.req.valid := stage1Uop.valid && stage1Regs.valid && stage1Ftq.valid
  stage1Uop.ready  := alu.io.req.ready
  stage1Regs.ready := alu.io.req.ready
  stage1Ftq.ready  := alu.io.req.ready
  alu.io.req.bits  := exe_req
  alu.io.kill      := io_kill

  val io_alu_resp = IO(Output(Valid(new ExeUnitResp)))
  io_alu_resp.valid := alu.io.resp.valid
  alu.io.resp.ready := true.B
  io_alu_resp.bits  := alu.io.resp.bits
}
