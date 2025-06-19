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
  val io = IO(new StageBundle(1, 1, new TLBReq, new TLBResp) {
    val mode = Input(new Bundle {
      val da  = Bool() // direct access
      val pg  = Bool() // page table access
      val dmw = Vec(2, UInt(params.dataWidth.W))
    })
    def transReq  = req(0)
    def transResp = resp(0)
  })

  io.transReq.ready       := io.transResp.ready
  io.transResp.valid      := io.transReq.valid
  io.transResp.bits.miss  := false.B                // TLB miss, always false for now
  io.transResp.bits.paddr := io.transReq.bits.vaddr // passthrough vaddr as paddr for now

  assert(io.mode.da && !io.mode.pg, "TLB mode must be da for now")
}
