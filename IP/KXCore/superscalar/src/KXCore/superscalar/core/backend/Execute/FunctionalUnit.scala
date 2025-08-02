package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.superscalar._
import KXCore.superscalar.core._
import KXCore.superscalar.core.frontend._

/** Abstract top level functional unit class that wraps a lower level hand made functional unit
  */
abstract class FunctionalUnit(val isAluUnit: Boolean = false)(implicit params: CoreParameters) extends Module {
  val io = IO(new Bundle {
    val kill = Input(Bool())

    val req  = Flipped(new DecoupledIO(new FuncUnitReq))
    val resp = new DecoupledIO(new ExeUnitResp)
  })
}

/** Functional unit that wraps RocketChips ALU
  */
class ALUUnit(implicit params: CoreParameters) extends FunctionalUnit(isAluUnit = true) {
  import params.{commonParams, frontendParams, fetchBytes}
  import commonParams.{instBytes, instWidth, dataWidth, vaddrWidth}
  import frontendParams.{fetchWidth}

  io.req.ready := true.B
  val uop = io.req.bits.uop

  // operand 1 select
  // Get the uop PC for jumps
  val block_pc = params.fetchAlign(io.req.bits.ftq_info(0).entry.fetchPC)
  val uop_pc   = (block_pc | Cat(uop.idx, Fill(log2Ceil(instBytes), 0.U)))

  val op1_data = MuxLookup(uop.op1Sel, 0.U)(
    Seq(
      OP1Type.OP1_RS1.asUInt  -> io.req.bits.rs1_data,
      OP1Type.OP1_PC.asUInt   -> uop_pc,
      OP1Type.OP1_ZERO.asUInt -> 0.U,
    ),
  )

  // operand 2 select
  val op2_data = MuxLookup(uop.op2Sel, io.req.bits.rs1_data)(
    Seq(
      OP2Type.OP2_RS2.asUInt  -> io.req.bits.rs1_data,
      OP2Type.OP2_IMM.asUInt  -> io.req.bits.uop.imm,
      OP2Type.OP2_NEXT.asUInt -> 4.U,
    ),
  )

  val alu = Module(new ALU())

  alu.io.in1 := op1_data.asUInt
  alu.io.in2 := op2_data.asUInt
  alu.io.cmd := uop.aluCmd

  val rs1 = io.req.bits.rs1_data
  val rs2 = io.req.bits.rs2_data

  val brinfo = Wire(new BrUpdateInfo)
  brinfo.mispredict := MuxLookup(io.req.bits.uop.cfiType, false.B)(
    Seq(
      CFIType.CFI_JIRL.asUInt -> (!io.req.bits.ftq_info(1).valid ||
        brinfo.target =/= io.req.bits.ftq_info(1).entry.fetchPC),
      CFIType.CFI_BR.asUInt -> (brinfo.taken =/= io.req.bits.uop.taken),
    ),
  )
  brinfo.cfiIdx  := io.req.bits.uop.idx
  brinfo.cfiType := io.req.bits.uop.cfiType
  brinfo.taken   := alu.io.out.asBool
  brinfo.target := Mux(
    io.req.bits.uop.cfiType === CFIType.CFI_JIRL.asUInt,
    uop_pc,
    io.req.bits.rs1_data,
  ) + io.req.bits.uop.imm

  io.resp.valid       := io.req.valid
  io.resp.bits.uop    := io.req.bits.uop
  io.resp.bits.data   := alu.io.out
  io.resp.bits.brInfo := brinfo
  assert(io.resp.ready)
}

// /** Divide functional unit.
//   *
//   * @param dataWidth
//   *   data to be passed into the functional unit
//   */
// class DivUnit(dataWidth: Int)(implicit p: Parameters) extends FunctionalUnit(dataWidth = dataWidth) {

//   // We don't use the iterative multiply functionality here.
//   // Instead we use the PipelinedMultiplier
//   val div = Module(new freechips.rocketchip.rocket.MulDiv(mulDivParams, width = dataWidth))

//   val req = Reg(Valid(new MicroOp()))

//   when(io.req.fire) {
//     req.valid := !IsKilledByBranch(io.brupdate, io.kill, io.req.bits)
//     req.bits  := UpdateBrMask(io.brupdate, io.req.bits.uop)
//   }.otherwise {
//     req.valid := !IsKilledByBranch(io.brupdate, io.kill, req.bits) && req.valid
//     req.bits  := UpdateBrMask(io.brupdate, req.bits)
//   }
//   when(reset.asBool) {
//     req.valid := false.B
//   }

//   // request
//   div.io.req.valid    := io.req.valid && !IsKilledByBranch(io.brupdate, io.kill, io.req.bits)
//   div.io.req.bits.dw  := io.req.bits.uop.fcn_dw
//   div.io.req.bits.fn  := io.req.bits.uop.fcn_op
//   div.io.req.bits.in1 := io.req.bits.rs1_data
//   div.io.req.bits.in2 := io.req.bits.rs2_data
//   div.io.req.bits.tag := DontCare
//   io.req.ready        := div.io.req.ready && !req.valid

//   // handle pipeline kills and branch misspeculations
//   div.io.kill := (req.valid && IsKilledByBranch(io.brupdate, io.kill, req.bits))

//   // response
//   io.resp.valid     := div.io.resp.valid && req.valid
//   div.io.resp.ready := io.resp.ready
//   io.resp.valid     := div.io.resp.valid && req.valid
//   io.resp.bits.data := div.io.resp.bits.data
//   io.resp.bits.uop  := req.bits
//   when(io.resp.fire) {
//     req.valid := false.B
//   }
// }

// /** Pipelined multiplier functional unit that wraps around the RocketChip pipelined multiplier
//   *
//   * @param numStages
//   *   number of pipeline stages
//   * @param dataWidth
//   *   size of the data being passed into the functional unit
//   */
// class PipelinedMulUnit(numStages: Int, dataWidth: Int)(implicit p: Parameters) extends FunctionalUnit(dataWidth = dataWidth) {
//   io.req.ready := true.B
//   val imul = Module(new PipelinedMultiplier(xLen, numStages))
//   val pipe = Module(new BranchKillablePipeline(new FuncUnitReq(dataWidth), numStages))
//   // request
//   imul.io.req.valid    := io.req.valid
//   imul.io.req.bits.fn  := io.req.bits.uop.fcn_op
//   imul.io.req.bits.dw  := io.req.bits.uop.fcn_dw
//   imul.io.req.bits.in1 := io.req.bits.rs1_data
//   imul.io.req.bits.in2 := io.req.bits.rs2_data
//   imul.io.req.bits.tag := DontCare

//   pipe.io.req      := io.req
//   pipe.io.flush    := io.kill
//   pipe.io.brupdate := io.brupdate
//   // response
//   io.resp.valid           := pipe.io.resp(numStages - 1).valid
//   io.resp.bits.uop        := pipe.io.resp(numStages - 1).bits.uop
//   io.resp.bits.data       := imul.io.resp.bits.data
//   io.resp.bits.predicated := false.B
// }
