package KXCore.common.utils

import chisel3._
import chisel3.util._

/** N-wide one-hot priority encoder.
  */
object SelectFirstN {
  def apply(in: UInt, n: Int) = {
    val sels = Wire(Vec(n, UInt(in.getWidth.W)))
    var mask = in

    for (i <- 0 until n) {
      sels(i) := PriorityEncoderOH(mask)
      mask = mask & ~sels(i)
    }

    sels
  }
}

/** Object to rotate a signal left by one
  */
object RotateL1 {
  def apply(signal: UInt): UInt = {
    val w   = signal.getWidth
    val out = Cat(signal(w - 2, 0), signal(w - 1))

    return out
  }
}

/** Object to sext a value to a particular length.
  */
object Sext {
  def apply(x: UInt, length: Int): UInt = {
    if (x.getWidth == length) return x
    else return Cat(Fill(length - x.getWidth, x(x.getWidth - 1)), x)
  }
}
