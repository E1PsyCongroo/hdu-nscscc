// package KXCore.superscalar.core.backend

// import chisel3._
// import chisel3.util._
// import KXCore.superscalar._
// import KXCore.common.utils._

// abstract class AbstractRenameFreeList(val allocWidth: Int, val deallocWidth: Int)(implicit params: CoreParameters) extends Module {
//   protected val pregNum   = params.backend.pregNum
//   protected val pregWidth = params.backend.pregWidth
//   protected val n         = pregNum

//   val io = IO(new Bundle {
//     val initial = Input(UInt(pregNum.W))
//     // Physical register requests.
//     val reqs       = Input(Vec(allocWidth, Bool()))
//     val allocPregs = Output(Vec(allocWidth, Valid(UInt(pregWidth.W))))

//     // Pregs returned by the ROB.
//     val dealloc = Input(Vec(deallocWidth, Valid(UInt(pregWidth.W))))

//     val rollback = Input(Bool())

//     // Redo alloc requests.
//     // This is used to restore the free list state after a branch misprediction.
//     val redo      = Input(Bool())
//     val redoAlloc = Input(Vec(allocWidth, Valid(UInt(pregWidth.W))))

//     val debug_freeList = Output(UInt(pregNum.W))
//   })
// }

// class RenameFreeList(
//     allocWidth: Int,
//     deallocWidth: Int,
// )(implicit params: CoreParameters)
//     extends AbstractRenameFreeList(allocWidth, deallocWidth) {
//   // The free list register array and its branch allocation lists.
//   val freeList      = RegInit(UInt(pregNum.W), io.initial)
//   val specAllocList = RegInit(0.U(pregNum.W))

//   // Select pregs from the free list.
//   val selects    = SelectFirstN(freeList, allocWidth)
//   val selectFire = Wire(Vec(allocWidth, Bool()))

//   // Masks that modify the freelist array.
//   val selectMask    = (selects zip selectFire).map { case (s, f) => s & Fill(n, f) }.reduce(_ | _)
//   val redoAllocMask = io.redoAlloc.map(alloc => alloc.bits & Fill(n, alloc.valid)).reduce(_ | _)
//   val allocMask     = Mux(io.redo, redoAllocMask, selectMask)

//   val comDeallocs      = RegNext(io.dealloc).map(d => UIntToOH(d.bits)(n - 1, 0) & Fill(n, d.valid)).reduce(_ | _)
//   val rollbackDeallocs = specAllocList & Fill(n, io.rollback)
//   val deallocMask      = comDeallocs | rollbackDeallocs

//   // Update the free list.
//   freeList      := (freeList & ~allocMask) | deallocMask
//   specAllocList := (specAllocList | allocMask) & ~deallocMask

//   for (w <- 0 until allocWidth) {
//     val valid  = selects(w).orR && !io.redo
//     val select = OHToUInt(selects(w))

//     selectFire(w) := valid && io.reqs(w)

//     io.allocPregs(w).bits  := select
//     io.allocPregs(w).valid := valid
//   }

//   io.debug_freeList := freeList | io.allocPregs.map(p => UIntToOH(p.bits)(n - 1, 0) & Fill(n, p.valid)).reduce(_ | _)

//   assert(!(io.debug_freeList & deallocMask).orR, "[freelist] Returning a free physical register.")
// }

// class BankedRenameFreeList(
//     plWidth: Int,
// )(implicit params: CoreParameters)
//     extends AbstractRenameFreeList(plWidth, plWidth) {
//   def bankIdx(prs: UInt): UInt = prs(log2Ceil(plWidth) - 1, 0)

//   require(isPow2(plWidth))
//   require(plWidth > 1)
//   require(enableColumnALUWrites)
//   require(pregNum % plWidth == 0)
//   require(!enablesuperscalarSnapshots)

//   val sel = RegInit(1.U(plWidth.W))
//   sel := RotateL1(sel)

//   val freelists = (0 until plWidth).map { w =>
//     val freelist = Module(new RenameFreeList(1, plWidth, pregNum / plWidth, false))

//     val initial = io.initial.asBools.zipWithIndex.filter(_._2 % plWidth == w).map(_._1)
//     freelist.io.initial := VecInit(initial).asUInt
//     freelist.io.reqs(0) := false.B

//     for (i <- 0 until plWidth) {
//       freelist.io.despec(i).valid := io.despec(i).valid && bankIdx(io.despec(i).bits) === w.U
//       freelist.io.despec(i).bits  := io.despec(i).bits >> log2Ceil(plWidth)

//       freelist.io.dealloc(i).valid := io.dealloc(i).valid && bankIdx(io.dealloc(i).bits) === w.U
//       freelist.io.dealloc(i).bits  := io.dealloc(i).bits >> log2Ceil(plWidth)
//     }
//     freelist.io.ren_br_tags(0).valid := false.B
//     freelist.io.ren_br_tags(0).bits  := DontCare
//     freelist.io.ren_br_tags(1).valid := false.B
//     freelist.io.ren_br_tags(1).bits  := DontCare

//     freelist.io.brupdate := io.brupdate
//     freelist.io.rollback := io.rollback

//     freelist
//   }

//   var older_than_branch = true.B
//   for (w <- 0 until plWidth) {
//     io.allocPregs(w).valid := false.B
//     io.allocPregs(w).bits  := DontCare

//     for (i <- 0 until plWidth) {
//       when(sel((i + w) % plWidth)) {
//         freelists(i).io.reqs(0) := io.reqs(w)
//         io.allocPregs(w).valid  := freelists(i).io.allocPregs(0).valid
//         io.allocPregs(w).bits   := Cat(freelists(i).io.allocPregs(0).bits, i.U(log2Ceil(plWidth).W))

//         freelists(i).io.ren_br_tags(0).valid := io.ren_br_tags.map(_.valid).reduce(_ || _) && !older_than_branch
//         freelists(i).io.ren_br_tags(0).bits  := Mux1H(io.ren_br_tags.map(_.valid), io.ren_br_tags.map(_.bits))

//         freelists(i).io.ren_br_tags(1).valid := io.ren_br_tags.map(_.valid).reduce(_ || _) && older_than_branch
//         freelists(i).io.ren_br_tags(1).bits  := Mux1H(io.ren_br_tags.map(_.valid), io.ren_br_tags.map(_.bits))

//       }
//     }
//     older_than_branch = older_than_branch && !io.ren_br_tags(w + 1).valid
//   }

//   io.debug_freeList := VecInit((0 until pregNum).map { w =>
//     freelists(w % plWidth).io.debug_freeList(w >> log2Ceil(plWidth))
//   }).asUInt
// }
