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
  val fu_types: UInt = 0.U(FUType.getWidth.W)
  val nReaders       = 1
  require(nReaders > 0 && nReaders <= 2)

  val io_kill       = IO(Input(Bool()))
  val io_fu_types   = IO(Output(UInt(FUType.getWidth.W)))
  val io_iss_uop    = IO(Flipped(Decoupled(new MicroOp)))
  val io_read_reqs  = IO(Vec(nReaders, Decoupled(UInt(params.backendParams.pregWidth.W))))
  val io_read_resps = IO(Vec(nReaders, Input(UInt(params.commonParams.dataWidth.W))))

  io_read_reqs(0).valid := io_iss_uop.valid && io_iss_uop.bits.lrs1 =/= 0.U
  io_read_reqs(0).bits  := io_iss_uop.bits.prs1
  if (nReaders == 2) {
    io_read_reqs(1).valid := io_iss_uop.valid && io_iss_uop.bits.lrs2 =/= 0.U
    io_read_reqs(1).bits  := io_iss_uop.bits.prs2
  }

  val stage0Regs = Wire(Decoupled(Vec(nReaders, UInt(params.commonParams.dataWidth.W))))
  stage0Regs.valid   := io_read_reqs.map(_.fire).reduce(_ && _)
  stage0Regs.bits(0) := Mux(io_iss_uop.bits.lrs1 === 0.U, 0.U, io_read_resps(0))
  if (nReaders == 2) {
    stage0Regs.bits(1) := Mux(io_iss_uop.bits.lrs2 === 0.U, 0.U, io_read_resps(1))
  }

  val stage0Uop = Wire(Decoupled(new MicroOp))
  stage0Uop.valid  := io_iss_uop.valid
  stage0Uop.bits   := io_iss_uop.bits
  io_iss_uop.ready := stage0Uop.ready

  val stage0to1Regs = Wire(Decoupled(Vec(nReaders, UInt(params.commonParams.dataWidth.W))))
  PipeConnect(Some(io_kill), stage0Regs, stage0to1Regs)

  val stage0to1Uop = Wire(Decoupled(new MicroOp))
  PipeConnect(Some(io_kill), stage0Uop, stage0to1Uop)

  val stage1Uop = Wire(Decoupled(new MicroOp))
  stage1Uop.valid    := stage0to1Uop.valid
  stage1Uop.bits     := stage0to1Uop.bits
  stage0to1Uop.ready := stage1Uop.ready
  val stage1to2Uop = Wire(Decoupled(new MicroOp))
  PipeConnect(Some(io_kill), stage1Uop, stage1to2Uop)

  io_fu_types := fu_types
}

class MemExeUnit(implicit params: CoreParameters) extends ExecutionUnit {
  override val fu_types: UInt = FUType.FUT_MEM.asUInt
  override val nReaders       = 1
}

class UniqueExeUnit(
    val hasCSR: Boolean = false,
    val hasMul: Boolean = false,
    val hasDiv: Boolean = false,
)(implicit params: CoreParameters)
    extends ExecutionUnit {
  override val fu_types: UInt =
    (if (hasCSR) FUType.FUT_CSR.asUInt else 0.U) |
      (if (hasMul) FUType.FUT_MUL.asUInt else 0.U) |
      (if (hasDiv) FUType.FUT_DIV.asUInt else 0.U)
  override val nReaders = 2
}

class ALUExeUnit(implicit params: CoreParameters) extends ExecutionUnit {
  override val fu_types: UInt = FUType.FUT_ALU.asUInt | FUType.FUT_CFI.asUInt
  override val nReaders       = 2

  val io_ftq_req  = IO(Output(Vec(2, UInt(params.frontendParams.ftqIdxWidth.W))))
  val io_ftq_resp = IO(Flipped(Vec(2, new FTQInfo)))

  io_ftq_req(0) := stage0to1Uop.bits.ftqIdx
  io_ftq_req(1) := WrapInc(stage0to1Uop.bits.ftqIdx, params.frontendParams.ftqNum)
  val stage0to1Ftq = RegEnable(io_ftq_resp, stage0Uop.ready)

  val exe_req = Wire(new FuncUnitReq)
  exe_req.uop      := stage0to1Uop.bits
  exe_req.rs1_data := stage0to1Regs.bits(0)
  exe_req.rs2_data := stage0to1Regs.bits(1)
  exe_req.ftq_info := stage0to1Ftq

  val alu = Module(new ALUUnit)
  alu.io.req.valid    := stage0to1Uop.valid && stage0to1Regs.valid
  stage0to1Uop.ready  := alu.io.req.ready
  stage0to1Regs.ready := alu.io.req.ready
  alu.io.req.bits     := exe_req
  alu.io.kill         := io_kill

  val io_alu_resp = IO(Output(Valid(new ExeUnitResp)))
  io_alu_resp.valid := alu.io.resp.valid
  alu.io.resp.ready := true.B
  io_alu_resp.bits  := alu.io.resp.bits
}
