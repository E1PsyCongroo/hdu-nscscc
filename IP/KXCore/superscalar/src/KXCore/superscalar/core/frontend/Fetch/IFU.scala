package KXCore.superscalar.core.frontend

import chisel3._
import chisel3.util._
import chisel3.experimental.dataview._
import KXCore.common._
import KXCore.common.peripheral._
import KXCore.superscalar._

// class IFUResp(implicit params: CoreParameters) extends Bundle {
//   val fetchPack = new ICacheResp
//   val pc        = UInt(params.vaddrWidth.W)
// }

// class IFU(implicit params: CoreParameters) extends Module {
//   val io = IO(new StageBundle(1, 1, new IPFUResp, new IFUResp))

//   val icache = Module(new ICache(0))
//   val tlb    = Module(new TLB)

//   icache.io.vaddrReq.valid := io.from.fire
//   icache.io.vaddrReq.bits  := io.from.bits.pc
//   icache.io.paddr          := tlb.io.resp.paddr
//   icache.io.resp.ready     := io.to.ready
//   icache.io.kill           := false.B
//   icache.io.cacopReq.valid := false.B
//   icache.io.cacopReq.bits  := DontCare

//   tlb.io.req.valid            := io.from.fire
//   tlb.io.req.bits.passthrough := true.B
//   tlb.io.req.bits.vaddr       := io.from.bits.pc

//   /* IO bind */
//   io.axi        <> icache.io.axi
//   io.from.ready := icache.io.vaddrReq.ready && tlb.io.req.ready

//   io.to.valid          := icache.io.resp.valid
//   io.to.bits.fetchPack := icache.io.resp.bits
//   io.to.bits.pc        := io.from.bits.pc
// }
