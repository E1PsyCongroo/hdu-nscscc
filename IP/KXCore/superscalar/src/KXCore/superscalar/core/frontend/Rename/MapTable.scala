package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.superscalar.constants._

class MapReq(implicit val params: CoreParameters) extends Bundle {
  val lrs1 = UInt(params.lregWidth.W)
  val lrs2 = UInt(params.lregWidth.W)
  val ldst = UInt(params.lregWidth.W)
}

class MapResp(implicit val params: CoreParameters) extends Bundle {
  val prs1      = UInt(params.pregWidth.W)
  val prs2      = UInt(params.pregWidth.W)
  val stalePdst = UInt(params.pregWidth.W)
}

class RemapReq(implicit val params: CoreParameters) extends Bundle {
  val ldst  = UInt(params.lregWidth.W)
  val pdst  = UInt(params.pregWidth.W)
  val valid = Bool()
}

class RenameMapTable(val bypass: Boolean)(implicit params: CoreParameters) extends Module {
  private val plWidth   = params.plWidth
  private val lregNum   = params.lregNum
  private val pregWidth = params.pregWidth

  val io = IO(new Bundle {
    // Logical sources -> physical sources.
    val mapReqs  = Input(Vec(plWidth, new MapReq))
    val mapResps = Output(Vec(plWidth, new MapResp))

    // Remapping an ldst to a newly allocated pdst?
    val renRemapReqs = Input(Vec(plWidth, new RemapReq))
    val comRemapReqs = Input(Vec(plWidth, new RemapReq))

    // Signals for restoring state
    val rollback = Input(Bool())

    // Redo remapping requests.
    // This is used to restore the map table state after a branch misprediction.
    val redo          = Input(Bool())
    val redoRemapReqs = Input(Vec(plWidth, new RemapReq))
  })

  // The map table register array
  val renMapTable = RegInit(VecInit((0 until lregNum) map { _.U(pregWidth.W) }))
  val comMapTable = RegInit(VecInit((0 until lregNum) map { _.U(pregWidth.W) }))

  // The intermediate states of the map table following modification by each pipeline slot.
  val renRemapTable = Wire(Vec(plWidth + 1, Vec(lregNum, UInt(pregWidth.W))))
  val comRemapTable = Wire(Vec(plWidth + 1, Vec(lregNum, UInt(pregWidth.W))))

  // Uops requesting changes to the map table.
  val renRemapPdsts = (io.renRemapReqs zip io.redoRemapReqs).map { case (ren, redo) =>
    Mux(io.redo, redo.pdst, ren.pdst)
  }
  val renRemapLdstsOH = (io.renRemapReqs zip io.redoRemapReqs)
    .map { case (ren, redo) => Mux(io.redo, redo, ren) }
    .map(req => UIntToOH(req.ldst) & Fill(lregNum, req.valid.asUInt))

  val comRemapPdsts   = io.comRemapReqs.map(_.pdst)
  val comRemapLdstsOH = io.comRemapReqs.map(req => UIntToOH(req.ldst) & Fill(lregNum, req.valid.asUInt))

  val rollbackRemapPdsts   = io.redoRemapReqs.map(_.pdst)
  val rollbackRemapLdstsOH = io.redoRemapReqs.map(req => UIntToOH(req.ldst) & Fill(lregNum, req.valid.asUInt))

  // Figure out the new mappings seen by each pipeline slot.
  for (i <- 0 until lregNum) {
    val renRemappedRow = (renRemapLdstsOH.map(ldst => ldst(i)) zip renRemapPdsts)
      .scanLeft(renMapTable(i)) { case (pdst, (ldst, new_pdst)) => Mux(ldst, new_pdst, pdst) }

    val comRemappedRow = (comRemapLdstsOH.map(ldst => ldst(i)) zip comRemapPdsts)
      .scanLeft(comMapTable(i)) { case (pdst, (ldst, new_pdst)) => Mux(ldst, new_pdst, pdst) }

    for (j <- 0 until plWidth + 1) {
      renRemapTable(j)(i) := renRemappedRow(j)
      comRemapTable(j)(i) := comRemappedRow(j)
    }
  }

  // Update mappings.
  renMapTable := Mux(io.rollback, comRemapTable(plWidth), renRemapTable(plWidth))
  comMapTable := comRemapTable(plWidth)

  // Read out mappings.
  for (i <- 0 until plWidth) {
    io.mapResps(i).prs1 := (0 until i).foldLeft(renMapTable(io.mapReqs(i).lrs1))((p, k) =>
      Mux(bypass.B && io.renRemapReqs(k).valid && io.renRemapReqs(k).ldst === io.mapReqs(i).lrs1, io.renRemapReqs(k).pdst, p),
    )
    io.mapResps(i).prs2 := (0 until i).foldLeft(renMapTable(io.mapReqs(i).lrs2))((p, k) =>
      Mux(bypass.B && io.renRemapReqs(k).valid && io.renRemapReqs(k).ldst === io.mapReqs(i).lrs2, io.renRemapReqs(k).pdst, p),
    )
    io.mapResps(i).stalePdst := (0 until i).foldLeft(renMapTable(io.mapReqs(i).ldst))((p, k) =>
      Mux(bypass.B && io.renRemapReqs(k).valid && io.renRemapReqs(k).ldst === io.mapReqs(i).ldst, io.renRemapReqs(k).pdst, p),
    )
  }

  io.renRemapReqs.map(req => (req.pdst, req.valid)).foreach { case (p, r) =>
    assert(!r || !renMapTable.contains(p), "[maptable] Trying to write a duplicate mapping.")
  }

}
