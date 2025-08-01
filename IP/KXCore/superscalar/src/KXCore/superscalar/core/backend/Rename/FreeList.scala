package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.superscalar._
import KXCore.common.utils._

class RenameFreeList(
    allocWidth: Int,
    deallocWidth: Int,
)(implicit params: CoreParameters)
    extends Module {
  import params.{commonParams, backendParams}
  import backendParams.{pregNum, pregWidth}
  protected val n = pregNum

  val io = IO(new Bundle {
    val initial = Input(UInt(pregNum.W))
    // Physical register requests.
    val allocPregs = Vec(allocWidth, Decoupled(UInt(pregWidth.W)))

    // Pregs returned by the ROB.
    val dealloc = Input(Vec(deallocWidth, Valid(UInt(pregWidth.W))))

    val rollback = Input(Bool())

    val debug_freeList = Output(UInt(pregNum.W))
  })

  // The free list register array and its allocation lists.
  val freeList      = RegInit(UInt(pregNum.W), io.initial)
  val specAllocList = RegInit(0.U(pregNum.W))

  // Select pregs from the free list.
  val selects    = SelectFirstN(freeList, allocWidth)
  val selectFire = Wire(Vec(allocWidth, Bool()))

  // Masks that modify the freelist array.
  val selectMask = (selects zip selectFire).map { case (s, f) => s & Fill(n, f) }.reduce(_ | _)
  val allocMask  = selectMask

  val comDeallocs      = RegNext(io.dealloc).map(d => UIntToOH(d.bits)(n - 1, 0) & Fill(n, d.valid)).reduce(_ | _)
  val rollbackDeallocs = specAllocList & Fill(n, io.rollback)
  val deallocMask      = comDeallocs | rollbackDeallocs

  // Update the free list.
  freeList      := (freeList & ~allocMask) | deallocMask
  specAllocList := (specAllocList | allocMask) & ~deallocMask

  for (w <- 0 until allocWidth) {
    val valid  = selects(w).orR
    val select = OHToUInt(selects(w))

    selectFire(w) := valid && io.allocPregs(w).ready

    io.allocPregs(w).bits  := select
    io.allocPregs(w).valid := valid
  }

  io.debug_freeList := freeList | io.allocPregs.map(p => UIntToOH(p.bits)(n - 1, 0) & Fill(n, p.valid)).reduce(_ | _)

  assert(!(io.debug_freeList & deallocMask).orR, "[freelist] Returning a free physical register.")
}
