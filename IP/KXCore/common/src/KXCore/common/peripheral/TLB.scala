package KXCore.common.peripheral

import chisel3._
import chisel3.util._
import KXCore.common._

class TLBReq(implicit params: CommonParameters) extends Bundle {

  /** request address from CPU. */
  val vaddr = UInt(params.vaddrWidth.W)

  // /* address space identifier */
  // val asid = UInt(10.W)

  // /* privilege level */
  // val plv = UInt(2.W)

  // /* memory access type */
  // val isWrite = Bool()
}

class TLBResp(implicit params: CommonParameters) extends Bundle {
  // /** tlb refill? */
  // val refill = Bool()

  // /* page invalid? */
  // val pageInv = Bool()

  // /* page privilege invalid? */
  // val ppi = Bool()

  // /* page memory access type invalid? */
  // val pme = Bool()

  // /* memory access type */
  // val mat = UInt(2.W)

  /** physical address */
  val paddr = UInt(params.paddrWidth.W)

  val miss = Bool() // TLB miss, always false for now
}

class TLBTranslateItem(implicit params: CommonParameters) extends Bundle {
  val ppn   = UInt((params.paddrWidth - 12).W) // physical page number
  val plv   = UInt(2.W) // privilege level
  val mat   = UInt(2.W) // memory access type
  val dirty = Bool()    // dirty bit
  val valid = Bool()    // valid bit
}

class TLBEntry(implicit params: CommonParameters) extends Bundle {
  val vppnWidth = params.vaddrWidth - 13
  val ppnWidth = params.paddrWidth - 12
  
  val vppn   = UInt(vppnWidth.W) // virtual page number
  // val ps     = UInt(6.W) // page size
  val ps     = Bool() // page size, 0 for 4K, 1 for 2M
  val global = Bool() // global bit
  val asid   = UInt(10.W) // address space identifier
  val item   = Vec(2, new TLBTranslateItem)
  val e      = Bool()

  def page_size(): UInt = {
    Mux(ps, 21.U, 12.U) // 2M or 4K
  }
}

object TLBCmd {
  val CMD_SRCH = 0
  val CMD_RD   = 1
  val CMD_WR   = 2
  val CMD_FILL = 3
  val CMD_INV  = 4
}

class TLB(implicit params: CommonParameters) extends Module {
  val io = IO(new Bundle {
    val mode = Input(new Bundle {
      val da  = Bool() // direct access
      val pg  = Bool() // page table access
      val dmw = Vec(2, UInt(params.dataWidth.W))
    })

  //   val cmd_in = Input(new Bundle {
  //     val cmd = UInt(3.W) // TLBCmd
  //     val tlb_asid = UInt(32.W) // CSR.ASID
  //     val tlb_ehi = UInt(32.W) // CSR.TLBEHI
  //     val tlb_idx = UInt(32.W) // CSR.TLBIDX
  //     val tlb_elo0 = UInt(32.W) // CSR.TLBLO0
  //     val tlb_elo1 = UInt(32.W) // CSR.TLBLO1

  //     val estat_ecode = UInt(6.W) // CSR.ESTAT.Ecode
  //     val inv_op = UInt(3.W)
  //   })

  //   val cmd_out = Output(new Bundle {
  //     val tlb_asid = UInt(32.W) // CSR.ASID
  //     val tlb_idx = UInt(32.W) // CSR.TLBIDX
  //     val tlb_ehi = UInt(32.W) // CSR.TLBEHI
  //     val tlb_elo0 = UInt(32.W) // CSR.TLBLO0
  //     val tlb_elo1 = UInt(32.W) // CSR.TLBLO1
  //   })
    
  //   val transReq0  = Input(new TLBReq)
  //   val transReq1  = Input(new TLBReq)
  //   val transResp0 = Output(new TLBResp)
  //   val transResp1 = Output(new TLBResp)
    val transReq = Input(new TLBReq)
    val transResp = Output(new TLBResp)
  })

  // val tlbEntry = Reg(Vec(params.tlbCount, new TLBEntry))
  
  // def tlb_translate(req: TLBReq): TLBResp = {
  //   val vaddr = req.vaddr
    
  //   val tlbHits = Wire(Vec(params.tlbCount, Bool()))
  //   for (i <- 0 until params.tlbCount) {
  //     val entry = tlbEntry(i)
  //     tlbHits(i) := (entry.vppn === req.vaddr(params.vaddrWidth - 1, 13)) && 
  //                   ((entry.asid === req.asid) || entry.global) &&
  //                   (entry.e)
  //   }
  //   val isHit = tlbHits.asUInt.orR

  //   val hitIndex = PriorityEncoder(tlbHits)
  //   val hitEntry = tlbEntry(hitIndex)

  //   val found = Wire(new TLBTranslateItem)
  //   found := Mux(vaddr(hitEntry.page_size()) === 0.U, hitEntry.item(0), hitEntry.item(1))
  //   val found_ps = hitEntry.ps

  //   val resp = Wire(new TLBResp)
  //   resp.refill := !isHit
  //   resp.pageInv := !found.valid
  //   resp.ppi := req.plv > found.plv
  //   resp.pme := req.isWrite && found.dirty === 0.U
  //   // resp.mat := found.mat
  //   resp.mat := DontCare
  //   resp.paddr := Mux(
  //     found_ps,
  //     Cat(found.ppn(params.paddrWidth - 13, 9), vaddr(8, 0)), // 2M page
  //     Cat(found.ppn(params.paddrWidth - 13, 0), vaddr(11, 0)) // 4K page
  //   )

  //   resp
  // }

  // def tlb_translate_direct(req: TLBReq): TLBResp = {
  //   val resp = Wire(new TLBResp)
  //   resp.refill := false.B
  //   resp.pageInv := false.B
  //   resp.ppi := false.B
  //   resp.pme := false.B
  //   resp.mat := DontCare // memory access type, not used in direct access mode
  //   resp.paddr := req.vaddr // passthrough vaddr as paddr for now
  //   resp
  // }

  // io.transResp0 := Mux(io.mode.da && !io.mode.pg, tlb_translate_direct(io.transReq0), tlb_translate(io.transReq0))
  // io.transResp1 := Mux(io.mode.da && !io.mode.pg, tlb_translate_direct(io.transReq1), tlb_translate(io.transReq1))

  // /* ------ TLBSRCH ------ */
  // val srch_vppn = io.cmd_in.tlb_ehi(31, 13)
  // val srch_hits = Wire(Vec(params.tlbCount, Bool()))
  // for (i <- 0 until params.tlbCount) {
  //   val entry = tlbEntry(i)
  //   srch_hits(i) := (entry.vppn === srch_vppn) && 
  //                   (entry.asid === io.cmd_in.tlb_asid(9, 0))
  // }
  // val tlbsrch_hit = srch_hits.asUInt.orR
  // val tlbsrch_index = PriorityEncoder(srch_hits)
  // val tlbsrch_tlbidx = !tlbsrch_hit ## io.cmd_in.tlb_idx(30, log2Ceil(params.tlbCount)) ## tlbsrch_index
  // /* ------ TLBSRCH ------ */
  
  // /* ------ TLBRD ------ */
  // val tlbrd_entry = tlbEntry(io.cmd_in.tlb_idx(log2Ceil(params.tlbCount) - 1, 0))
  // val tlbrd_tlbehi = Mux(tlbrd_entry.e, 0.U, Cat(tlbrd_entry.vppn, 0.U(12.W)))
  // val tlbrd_tlbrlo0 = Mux(tlbrd_entry.e, 
  //   0.U,
  //   Cat(
  //       0.U((36 - params.paddrWidth).W),
  //       tlbrd_entry.item(0).ppn,
  //       0.U(1.W),
  //       tlbrd_entry.global,
  //       tlbrd_entry.item(0).mat,
  //       tlbrd_entry.item(0).plv,
  //       tlbrd_entry.item(0).dirty,
  //       tlbrd_entry.item(0).valid,
  //     ),
  // )
  // val tlbrd_tlbrlo1 = Mux(tlbrd_entry.e, 
  //   0.U,
  //   Cat(
  //       0.U((36 - params.paddrWidth).W),
  //       tlbrd_entry.item(1).ppn,
  //       0.U(1.W),
  //       tlbrd_entry.global,
  //       tlbrd_entry.item(1).mat,
  //       tlbrd_entry.item(1).plv,
  //       tlbrd_entry.item(1).dirty,
  //       tlbrd_entry.item(1).valid,
  //     ),
  // )
  // val tlbrd_tlbidx = Mux(
  //   tlbrd_entry.e, 
  //   Cat(0.U(1.W), io.cmd_in.tlb_idx(30, 0)), 
  //   io.cmd_in.tlb_idx
  // )
  // val tlbrd_asid = Mux(tlbrd_entry.e, 0.U, Cat(io.cmd_in.tlb_asid(31, 10), tlbrd_entry.asid))
  // /* ------ TLBRD ------ */

  // /* ------ TLBWR ------ */
  // val tlbwr_entry_e = io.cmd_in.estat_ecode === 0x3F.U || io.cmd_in.tlb_idx(31) === 0.U
  // val tlbwr_index = io.cmd_in.tlb_idx(log2Ceil(params.tlbCount) - 1, 0)
  // val cmd_is_tlbwr = io.cmd_in.cmd === TLBCmd.CMD_WR.U
  // /* ------ TLBWR ------ */

  // /* ------ TLBINV ------ */

  // /* ------ TLBINV ------ */

  // /* ------ WRITE TLB ------ */
  // val cmd_inv = io.cmd_in.inv_op === TLBCmd.CMD_INV.U
  // val cmd_fill = io.cmd_in.inv_op === TLBCmd.CMD_FILL.U
  // val cmd_wr = io.cmd_in.cmd === TLBCmd.CMD_WR.U

  // val fill_entry = Wire(new TLBEntry)
  // fill_entry.vppn   := io.cmd_in.tlb_ehi(31, 13)
  // fill_entry.ps     := io.cmd_in.tlb_idx(29, 24) === 21.U // 2M page
  // fill_entry.global := io.cmd_in.tlb_elo0(6) && io.cmd_in.tlb_elo1(6)
  // fill_entry.asid   := io.cmd_in.tlb_asid(9, 0)
  // fill_entry.item(0).ppn := io.cmd_in.tlb_elo0(params.paddrWidth - 5, 8)
  // fill_entry.item(0).plv := io.cmd_in.tlb_elo0(3, 2)
  // fill_entry.item(0).mat := io.cmd_in.tlb_elo0(5, 4)
  // fill_entry.item(0).dirty := io.cmd_in.tlb_elo0(1)
  // fill_entry.item(0).valid := io.cmd_in.tlb_elo0(0)
  // fill_entry.item(1).ppn := io.cmd_in.tlb_elo1(params.paddrWidth - 5, 8)
  // fill_entry.item(1).plv := io.cmd_in.tlb_elo1(3, 2)
  // fill_entry.item(1).mat := io.cmd_in.tlb_elo1(5, 4)
  // fill_entry.item(1).dirty := io.cmd_in.tlb_elo1(1)
  // fill_entry.item(1).valid := io.cmd_in.tlb_elo1(0)

  // when(cmd_inv) {
  //   for (i <- 0 until params.tlbCount) {
  //     val en = MuxLookup(io.cmd_in.inv_op, false.B)(Seq(
  //       0.U -> true.B, // invalidate all entries
  //       1.U -> true.B,
  //       2.U -> tlbEntry(i).global,
  //       3.U -> !tlbEntry(i).global,
  //       4.U -> (!tlbEntry(i).global && (tlbEntry(i).asid === io.cmd_in.tlb_asid(9, 0))),
  //       5.U -> (!tlbEntry(i).global && (tlbEntry(i).asid === io.cmd_in.tlb_asid(9, 0)) && (tlbEntry(i).vppn === io.cmd_in.tlb_ehi(31, 13))),
  //       6.U -> ((tlbEntry(i).global || (tlbEntry(i).asid === io.cmd_in.tlb_asid(9, 0))) && (tlbEntry(i).vppn === io.cmd_in.tlb_ehi(31, 13)))
  //     ))
  //     tlbEntry(i).e := false.B
  //   }
  // }.elsewhen(cmd_fill) {
  //   tlbEntry(0) := fill_entry // for now, only fill the first entry
  // }.elsewhen(cmd_wr) {
  //   tlbEntry(tlbwr_index) := fill_entry
  //   tlbEntry(tlbwr_index).e := tlbwr_entry_e
  // }
  // // for (i <- 0 until params.tlbCount) {
  //   // val en = tlbwr_index === i.U && cmd_is_tlbwr
  //   // tlbEntry(i).asid := Mux(en, io.cmd_in.tlb_asid(9, 0), tlbEntry(i).asid)
  //   // tlbEntry(i).vppn := Mux(en, io.cmd_in.tlb_ehi(31, 13), tlbEntry(i).vppn)
  //   // tlbEntry(i).ps := Mux(en, io.cmd_in.tlb_idx(29, 24) === 21.U, tlbEntry(i).ps)
  //   // tlbEntry(i).global := Mux(en, io.cmd_in.tlb_elo0(6) && io.cmd_in.tlb_elo1(6), tlbEntry(i).global)
  //   // tlbEntry(i).item(0).ppn := Mux(en, io.cmd_in.tlb_elo0(params.paddrWidth - 5, 8), tlbEntry(i).item(0).ppn)
  //   // tlbEntry(i).item(0).plv := Mux(en, io.cmd_in.tlb_elo0(3, 2), tlbEntry(i).item(0).plv)
  //   // tlbEntry(i).item(0).mat := Mux(en, io.cmd_in.tlb_elo0(5, 4), tlbEntry(i).item(0).mat)
  //   // tlbEntry(i).item(0).dirty := Mux(en, io.cmd_in.tlb_elo0(1), tlbEntry(i).item(0).dirty)
  //   // tlbEntry(i).item(0).valid := Mux(en, io.cmd_in.tlb_elo0(0), tlbEntry(i).item(0).valid)
  //   // tlbEntry(i).item(1).ppn := Mux(en, io.cmd_in.tlb_elo1(params.paddrWidth - 5, 8), tlbEntry(i).item(1).ppn)
  //   // tlbEntry(i).item(1).plv := Mux(en, io.cmd_in.tlb_elo1(3, 2), tlbEntry(i).item(1).plv)
  //   // tlbEntry(i).item(1).mat := Mux(en, io.cmd_in.tlb_elo1(5, 4), tlbEntry(i).item(1).mat)
  //   // tlbEntry(i).item(1).dirty := Mux(en, io.cmd_in.tlb_elo1(1), tlbEntry(i).item(1).dirty)
  //   // tlbEntry(i).item(1).valid := Mux(en, io.cmd_in.tlb_elo1(0), tlbEntry(i).item(1).valid)
  //   // tlbEntry(i).e := Mux(en, tlbwr_entry_e, tlbEntry(i).e)
  // // }

  // /* ------ OUTPUT CSR ------ */
  // io.cmd_out.tlb_idx := MuxLookup(io.cmd_in.cmd, io.cmd_in.tlb_idx)(Seq(
  //   TLBCmd.CMD_SRCH.U -> tlbsrch_tlbidx,
  //   TLBCmd.CMD_RD.U   -> tlbrd_tlbidx,
  // ));

  // io.cmd_out.tlb_ehi := MuxLookup(io.cmd_in.cmd, io.cmd_in.tlb_ehi)(Seq(
  //   TLBCmd.CMD_SRCH.U -> Cat(srch_vppn, 0.U(12.W)),
  //   TLBCmd.CMD_RD.U   -> tlbrd_tlbehi,
  // ));

  // io.cmd_out.tlb_elo0 := MuxLookup(io.cmd_in.cmd, io.cmd_in.tlb_elo0)(Seq(
  //   TLBCmd.CMD_RD.U -> tlbrd_tlbrlo0,
  // ));

  // io.cmd_out.tlb_elo1 := MuxLookup(io.cmd_in.cmd, io.cmd_in.tlb_elo1)(Seq(
  //   TLBCmd.CMD_RD.U -> tlbrd_tlbrlo1,
  // ));

  // io.cmd_out.tlb_asid := MuxLookup(io.cmd_in.cmd, io.cmd_in.tlb_asid)(Seq(
  //   TLBCmd.CMD_RD.U -> tlbrd_asid,
  // ));
  /* ------ OUTPUT CSR ------ */

  io.transResp.miss  := false.B           // TLB miss, always false for now
  io.transResp.paddr := io.transReq.vaddr // passthrough vaddr as paddr for now

  assert(io.mode.da && !io.mode.pg, "TLB mode must be da for now")
}
