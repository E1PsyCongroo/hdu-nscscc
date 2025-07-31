package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import KXCore.common.utils._
import KXCore.superscalar._

/** Buffer to hold fetched packets and convert them into a vector of MicroOps to give the Decode stage
  *
  * @param num_entries
  *   effectively the number of full-sized fetch packets we can hold.
  */
class FetchBuffer(numEntries: Int = 16)(implicit params: CoreParameters) extends Module {
  import params.frontendParams.{fetchWidth}
  import params.backendParams.{coreWidth}
  val io = IO(new Bundle {
    val enq = Flipped(Decoupled(new FetchBundle()))
    val deq = Decoupled(new FetchBufferResp())

    // Was the pipeline redirected? flush the fetchbuffer.
    val flush = Input(Bool())
  })

  require(numEntries > fetchWidth)
  require(numEntries % coreWidth == 0)
  val numRows = numEntries / coreWidth

  val ram     = Reg(Vec(numEntries, new MicroOp))
  val deq_vec = Wire(Vec(numRows, Vec(coreWidth, new MicroOp)))

  val head       = RegInit(1.U(numRows.W))    // deq_ptr one-hot
  val tail       = RegInit(1.U(numEntries.W)) // enq_ptr one-hot
  val maybe_full = RegInit(false.B)

  // -------------------------------------------------------------
  // **** Enqueue Uops ****
  // -------------------------------------------------------------
  // Step 1: Convert FetchPacket into a vector of MicroOps.
  // Step 2: Generate one-hot write indices.
  // Step 3: Write MicroOps into the RAM.

  def rotateLeft(in: UInt, k: Int) = {
    val n = in.getWidth
    Cat(in(n - k - 1, 0), in(n - 1, n - k))
  }

  val might_hit_head = (1 until fetchWidth)
    .map(k => VecInit(rotateLeft(tail, k).asBools.zipWithIndex.filter { case (e, i) => i % coreWidth == 0 }.map { case (e, i) => e }).asUInt)
    .map(tail => head & tail)
    .reduce(_ | _)
    .orR
  val at_head = (VecInit(
    tail.asBools.zipWithIndex
      .filter { case (e, i) => i % coreWidth == 0 }
      .map { case (e, i) => e },
  ).asUInt & head).orR
  val do_enq = !(at_head && maybe_full || might_hit_head)

  io.enq.ready := do_enq

  // Input microops.
  val in_mask = Wire(Vec(fetchWidth, Bool()))
  val in_uops = Wire(Vec(fetchWidth, new MicroOp()))

  // Step 1: Convert FetchPacket into a vector of MicroOps.
  for (i <- 0 until fetchWidth) {
    val pc = io.enq.bits.pcs(i)
    in_uops(i)          := DontCare
    in_mask(i)          := io.enq.valid && io.enq.bits.mask(i)
    in_uops(i).debug.pc := pc
    in_uops(i).pcLow    := pc
    in_uops(i).ftqIdx   := io.enq.bits.ftqIdx
    in_uops(i).inst     := io.enq.bits.insts(i)
    in_uops(i).taken    := io.enq.bits.cfiIdx.bits === i.U && io.enq.bits.cfiIdx.valid
  }

  // Step 2. Generate one-hot write indices.
  val enq_idxs = Wire(Vec(fetchWidth, UInt(numEntries.W)))

  def inc(ptr: UInt) = {
    val n = ptr.getWidth
    Cat(ptr(n - 2, 0), ptr(n - 1))
  }

  var enq_idx = tail
  for (i <- 0 until fetchWidth) {
    enq_idxs(i) := enq_idx
    enq_idx = Mux(in_mask(i), inc(enq_idx), enq_idx)
  }

  // Step 3: Write MicroOps into the RAM.
  for (i <- 0 until fetchWidth) {
    for (j <- 0 until numEntries) {
      when(do_enq && in_mask(i) && enq_idxs(i)(j)) {
        ram(j) := in_uops(i)
      }
    }
  }

  // -------------------------------------------------------------
  // **** Dequeue Uops ****
  // -------------------------------------------------------------

  val tail_collisions    = VecInit((0 until numEntries).map(i => head(i / coreWidth) && (!maybe_full || (i % coreWidth != 0).B))).asUInt & tail
  val slot_will_hit_tail = (0 until numRows).map(i => tail_collisions((i + 1) * coreWidth - 1, i * coreWidth)).reduce(_ | _)
  val will_hit_tail      = slot_will_hit_tail.orR

  val do_deq = io.deq.ready && !will_hit_tail

  val deq_valids = (~MaskUpper(slot_will_hit_tail)).asBools

  // Generate vec for dequeue read port.
  for (i <- 0 until numEntries) {
    deq_vec(i / coreWidth)(i % coreWidth) := ram(i)
  }

  io.deq.bits.uops zip deq_valids map { case (d, v) => d.valid := v }
  io.deq.bits.uops zip Mux1H(head, deq_vec) map { case (d, q) => d.bits := q }
  io.deq.valid := deq_valids.reduce(_ || _)

  // -------------------------------------------------------------
  // **** Update State ****
  // -------------------------------------------------------------

  when(do_enq) {
    tail := enq_idx
    when(in_mask.reduce(_ || _)) {
      maybe_full := true.B
    }
  }

  when(do_deq) {
    head       := inc(head)
    maybe_full := false.B
  }

  when(io.flush) {
    head       := 1.U
    tail       := 1.U
    maybe_full := false.B
  }

}
