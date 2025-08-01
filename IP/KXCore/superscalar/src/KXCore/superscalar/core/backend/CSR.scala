package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.common._
import KXCore.superscalar.CoreParameters

class CRMD extends Bundle {
  val value = UInt(32.W)

  def plv() = value(1, 0)  // Privilege level
  def ie()  = value(2)     // Interrupt enable
  def da()  = value(3)     // Debug active
  def pg()  = value(4)     // Modify privilege
  def datf() = value(6, 5) // Data address translation fault
  def datm() = value(8, 7) // Data address translation mode

  def write(value: UInt): UInt = {
    value & 0x1ff.U(32.W)
  }

  def set_da(da: Bool): CRMD = {
    val write_mask = 0x8.U(32.W)
    ((value & ~write_mask) | (da.asUInt << 3)).asTypeOf(this)
  }

  def set_plv(plv: UInt): CRMD = {
    val write_mask = 0x3.U(32.W)
    ((value & ~write_mask) | (plv & write_mask)).asTypeOf(this)
  }

  def set_ie(ie: Bool): CRMD = {
    val write_mask = 0x4.U(32.W)
    ((value & ~write_mask) | (ie.asUInt << 2)).asTypeOf(this)
  }
}

class PRMD extends Bundle {
  val value = UInt(32.W)

  def pplv() = value(1, 0)  // Privilege level
  def pie()  = value(2)     // Interrupt enable

  def write(value: UInt): UInt = {
    value & 0x3.U(32.W)
  }

  def set_pplv(pplv: UInt): PRMD = {
    val write_mask = 0x3.U(32.W)
    ((value & ~write_mask) | (pplv & write_mask)).asTypeOf(this)
  }

  def set_pie(pie: Bool): PRMD = {
    val write_mask = 0x4.U(32.W)
    ((value & ~write_mask) | (pie.asUInt << 2)).asTypeOf(this)
  }
}

class ESTAT extends Bundle {
  val value = UInt(32.W)

  def is() = value(12, 0)

  def ecode() = value(21, 16)
  def sub_ecode() = value(30, 22)

  def write(value: UInt): UInt = {
    val write_mask = 0x3.U(32.W)
    (value & write_mask) | (this.value & ~write_mask)
  }

  def set_sample(sample: UInt): ESTAT = {
    val write_mask = 0xff.U(32.W) << 2
    ((value & ~write_mask) | (sample << 2)).asTypeOf(this)
  }

  def set_tis(tis: Bool): ESTAT = {
    val write_mask = 0x1.U(32.W) << 11
    ((value & ~write_mask) | (tis.asUInt << 11)).asTypeOf(this)
  }

  def set_ecode(ecode: UInt): ESTAT = {
    val write_mask = 0x3f.U(32.W) << 16
    ((value & ~write_mask) | (ecode << 16)).asTypeOf(this)
  }

  def set_sub_ecode(sub_ecode: UInt): ESTAT = {
    val write_mask = 0x1ff.U(32.W) << 22
    ((value & ~write_mask) | (sub_ecode << 22)).asTypeOf(this)
  }
}

class EENTRY extends Bundle {
  val value = UInt(32.W)

  def eentry() = value(31, 0) // Exception entry address

  def write(value: UInt): UInt = {
    value & ~0x1f.U(32.W)
  }
}

class ECFG extends Bundle {
  val value = UInt(32.W)

  def lie() = value(12, 0)

  def write(value: UInt): UInt = {
    val write_mask = 0x3ff.U | (0x3.U << 11)
    value & write_mask
  }
}

class Timer extends Module {
  val io = IO(new Bundle {
    val waddr = Input(UInt(12.W))
    val wdata = Input(UInt(32.W))
    val wen = Input(Bool())

    val tcfg = Output(UInt(32.W))
    val tval = Output(UInt(32.W))
    
    val pending = Output(Bool())
  })
  val en = RegInit(false.B)
  val periodic = RegInit(false.B)
  val initvalue = RegInit(0.U(32.W))
  val pending = RegInit(false.B)
  val tval = RegInit(0.U(32.W))

  val write_tfcg = io.waddr === CSRAddr.TCFG.U && io.wen
  
  en := Mux(write_tfcg, io.wdata(0), en)
  periodic := Mux(write_tfcg, io.wdata(1), periodic)

  val tcfg_initvalue = Cat(io.wdata(31, 2), 0.U(2.W))
  initvalue := Mux(write_tfcg, tcfg_initvalue, initvalue)

  tval := Mux(
    write_tfcg, 
    tcfg_initvalue,
    Mux(
      en,
      Mux(
        tval === 0.U,
        Mux(periodic, initvalue, 0.U),
        tval - 1.U
      ),
      0.U
    )
  )

  val write_ticlr = io.waddr === CSRAddr.TICLR.U && io.wen
  pending := Mux(
    write_ticlr && io.wdata(0), 
    false.B, 
    Mux(en && tval === 1.U, true.B, pending)
  )
  
  io.pending := pending
  io.tval := tval
  io.tcfg := Cat(initvalue, periodic, en)
}

object CSRAddr {
  val CRMD   = 0x00
  val PRMD   = 0x01
  val ECFG   = 0x04
  val ESTAT  = 0x05
  val ERA    = 0x06
  val BADV   = 0x07
  val EENTRY = 0x0c
  val SAVED0 = 0x30
  val TID    = 0x40
  val TCFG   = 0x41
  val TVAL   = 0x42
  val TICLR  = 0x44
}

object CSRCmd {
  val rw       = 0.U(2.W)
  val rdcntid  = 1.U(2.W)
  val rdcntvh  = 2.U(2.W)
  val rdcntvl  = 3.U(2.W)
}

class CSRIO(implicit params: CoreParameters) extends Bundle {
  /* ------ CSR RW ------- */
  val cmd   = Input(UInt(2.W))
  val raddr = Input(UInt(12.W))  // CSR address to read
  val rdata = Output(UInt(32.W)) // CSR read data
  
  val waddr = Input(UInt(5.W))  // CSR address to write
  val wdata = Input(UInt(32.W)) // CSR write data
  val wmask = Input(UInt(32.W)) // CSR write mask
  val we    = Input(Bool())     // Write enable
  /* ------ CSR RW ------- */

  val priv = Output(UInt(2.W)) // Current privilege level

  /* ------ Exception Enter ------ */
  val pc      = Input(UInt(32.W))  // Program counter for exception handling
  val ecode   = Input(UInt(6.W))   // Exception code
  val ecode_sub = Input(UInt(9.W))
  val badv    = Input(UInt(32.W)) // Bad virtual address for exception
  val excp_en = Input(Bool())      // Exception enable
  val eentry  = Output(UInt(32.W)) // Exception entry address
  /* ------ Exception Enter ------ */

  /* ------ Exception Return ------ */
  val eret_en = Input(Bool())      // Exception return enable
  val era     = Output(UInt(32.W)) // Exception return address
  /* ------ Exception Return ------ */

  /* ------ Interrupt Pending ------ */
  val interrupt = new Bundle {
    // val enable  = Output(Bool())     // Interrupt enable
    // val pending = Output(UInt(13.W)) // Interrupt pending
    val externel_sample = Input(UInt(12.W)) // External interrupt sample
    val pending = Output(Bool())     // Interrupt pending. Is there any pending interrupt?
  }
  /* ------ Interrupt Pending ------ */
}

class CSR(implicit params: CoreParameters) extends Module {
  val io = IO(new CSRIO)

  val crmd   = RegInit((0b10000).U.asTypeOf(new CRMD)) // da=1
  val prmd   = RegInit(0.U.asTypeOf(new PRMD))
  val ecfg   = RegInit(0.U.asTypeOf(new ECFG))
  val estat  = RegInit(0.U.asTypeOf(new ESTAT))
  val era    = Reg(UInt(32.W))
  val badv   = Reg(UInt(32.W))
  val eentry = Reg(new EENTRY)
  val saved  = Vec(4, Reg(UInt(32.W)))
  val tid    = Reg(UInt(32.W))

  io.priv := crmd.plv()

  /* ------ Timer ------ */
  val timer = Module(new Timer)
  timer.io.waddr := io.waddr
  timer.io.wdata := io.wdata
  timer.io.wen   := io.we
  val timer_interrupt_pending = timer.io.pending
  /* ------ Timer ------ */

  /* ------ Stable Counter ------ */
  val stable_counter = Module(new StableCounter)
  // val cntid = stable_counter.io.id
  val cntvh = stable_counter.io.high
  val cntvl = stable_counter.io.low
  /* ------ Stable Counter ------ */

  /* ------ Exception Enter ------ */
  val excp_crmd = crmd.set_ie(false.B).set_plv(0.U(2.W))
  val excp_prmd = prmd.set_pie(crmd.ie()).set_pplv(crmd.plv())
  val excp_estat = estat.set_ecode(io.ecode).set_sub_ecode(io.ecode_sub)

  io.eentry := eentry.value
  /* ------ Exception Enter ------ */

  /* ------ Exception Return ------ */
  val eret_crmd = crmd.set_ie(prmd.pie()).set_plv(prmd.pplv())
  val eret_prmd = prmd.set_pie(false.B).set_pplv(0.U(2.W))

  io.era := era
  /* ------ Exception Return ------ */

  /* ------ Interrupt Pending ------ */
  io.interrupt.pending := (estat.is() & ecfg.lie()).orR & crmd.ie()
  /* ------ Interrupt Pending ------ */
  
  /* ------ Write Logic ------ */
  when(io.excp_en) {
    crmd  := excp_crmd
    prmd  := excp_prmd
    estat := excp_estat
    badv := io.badv
    era := io.pc
  }.elsewhen(io.eret_en) {
    crmd := eret_crmd
    prmd := eret_prmd
  }.elsewhen(io.we) {
    for (i <- 0 until 4) {
      saved(i) := Mux(io.waddr === (CSRAddr.SAVED0 + i).U, (io.wdata & io.wmask) | (saved(i) & ~io.wmask), saved(i))
    }
    
    crmd.value := Mux(io.waddr === CSRAddr.CRMD.U, crmd.write((io.wdata & io.wmask) | (crmd.value & ~io.wmask)), crmd.value)
    prmd.value := Mux(io.waddr === CSRAddr.PRMD.U, prmd.write((io.wdata & io.wmask) | (prmd.value & ~io.wmask)), prmd.value)

    estat.value := Mux(io.waddr === CSRAddr.ESTAT.U, estat.write((io.wdata & io.wmask) | (estat.value & !io.wmask)), estat.value)
    era := Mux(io.waddr === CSRAddr.ERA.U, (io.wdata & io.wmask) | (era & !io.wmask), era)
    eentry.value := Mux(io.waddr === CSRAddr.EENTRY.U, eentry.write((io.wdata & io.wmask) | (eentry.value & !io.wmask)), eentry.value)

    tid := Mux(io.waddr === CSRAddr.TID.U, (io.wdata & io.wmask) | (tid & ~io.wmask), tid)
  }.otherwise{
    estat := estat.set_sample(io.interrupt.externel_sample).set_tis(timer_interrupt_pending)
  }
  /* ------ Write Logic ------ */

  /* ------ Read Logic ------ */
  io.rdata := MuxLookup(io.cmd, 0.U(32.W))(Seq(
    CSRCmd.rw -> MuxLookup(io.raddr, 0.U(32.W))(Seq(
        CSRAddr.CRMD.U   -> crmd.value,
        CSRAddr.PRMD.U   -> prmd.value,
        CSRAddr.ECFG.U   -> ecfg.value,
        CSRAddr.BADV.U   -> badv,
        CSRAddr.ESTAT.U  -> estat.value,
        CSRAddr.ERA.U    -> era,
        CSRAddr.EENTRY.U -> eentry.value,
        CSRAddr.TID.U    -> tid,
        CSRAddr.TCFG.U   -> timer.io.tcfg,
        CSRAddr.TVAL.U   -> timer.io.tval,
        CSRAddr.TICLR.U  -> 0.U, // TICLR is always read as 0
      ) ++ (0 until 4).map(i => (CSRAddr.SAVED0 + i).U -> saved(i))),
    // CSRCmd.rdcntid -> cntid,
    CSRCmd.rdcntid -> tid,
    CSRCmd.rdcntvh -> cntvh,
    CSRCmd.rdcntvl -> cntvl
  ))
  /* ------ Read Logic ------ */
}
