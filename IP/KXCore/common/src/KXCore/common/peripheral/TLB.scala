package KXCore.common.peripheral

import chisel3._
import chisel3.util._
import KXCore.common._

class TLBReq(implicit params: CommonParameters) extends Bundle {

  /** request address from CPU. */
  val vaddr = UInt(params.vaddrWidth.W)
}

class TLBResp(implicit params: CommonParameters) extends Bundle {
  // lookup responses
  /** miss */
  val miss = Bool()

  /** physical address */
  val paddr = UInt(params.paddrWidth.W)
}

class TLB(implicit params: CommonParameters) extends Module {
  val io = IO(new Bundle {
    val mode = Input(new Bundle {
      val da  = Bool() // direct access
      val pg  = Bool() // page table access
      val dmw = Vec(2, UInt(params.dataWidth.W))
    })
    val transReq  = Input(new TLBReq)
    val transResp = Output(new TLBResp)
  })

  io.transResp.miss  := false.B           // TLB miss, always false for now
  io.transResp.paddr := io.transReq.vaddr // passthrough vaddr as paddr for now

  assert(io.mode.da && !io.mode.pg, "TLB mode must be da for now")
}
