package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.superscalar.constants._

class BusyResp extends Bundle {
  val prs1Busy = Bool()
  val prs2Busy = Bool()
}

class RenameBusyTable(val numWbPorts: Int, val bypass: Boolean)(implicit params: CoreParameters) extends Module {
  private val plWidth = params.plWidth
  private val pregNum = params.pregNum

  val io = IO(new Bundle {
    val renUops    = Input(Vec(plWidth, new MicroOp))
    val busyResps  = Output(Vec(plWidth, new BusyResp))
    val rebusyReqs = Input(Vec(plWidth, Bool()))

    val wbPdsts  = Input(Vec(numWbPorts, UInt(plWidth.W)))
    val wbValids = Input(Vec(numWbPorts, Bool()))

    val debug = new Bundle { val busyTable = Output(Bits(pregNum.W)) }
  })

  val busyTable = RegInit(0.U(pregNum.W))
  // Unbusy written back registers.
  val busyTableWb = busyTable & ~(io.wbPdsts zip io.wbValids)
    .map { case (pdst, valid) => UIntToOH(pdst) & Fill(pregNum, valid.asUInt) }
    .reduce(_ | _)
  // Rebusy newly allocated registers.
  val busyTableNext = busyTableWb | (io.renUops zip io.rebusyReqs)
    .map { case (uop, req) => UIntToOH(uop.pdst) & Fill(pregNum, req.asUInt) }
    .reduce(_ | _)

  busyTable := busyTableNext

  // Read the busy table.
  for (i <- 0 until plWidth) {
    val prs1Bypassed = (0 until i).map(j => io.renUops(i).lrs1 === io.renUops(j).ldst && io.rebusyReqs(j)).foldLeft(false.B)(_ || _)
    val prs2Bypassed = (0 until i).map(j => io.renUops(i).lrs2 === io.renUops(j).ldst && io.rebusyReqs(j)).foldLeft(false.B)(_ || _)

    io.busyResps(i).prs1Busy := busyTable(io.renUops(i).prs1) || (prs1Bypassed && bypass.B)
    io.busyResps(i).prs2Busy := busyTable(io.renUops(i).prs2) || (prs2Bypassed && bypass.B)
  }

  io.debug.busyTable := busyTable
}
