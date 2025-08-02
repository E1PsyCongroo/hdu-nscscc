package KXCore.superscalar.core.backend

import chisel3._
import chisel3.util._
import KXCore.common.utils._
import KXCore.superscalar._
import KXCore.superscalar.core._

class DispatchIO(implicit params: CoreParameters) extends Bundle {
  import params.{backendParams}
  import backendParams.{coreWidth, issueParams}
  // incoming microops from rename2
  val ren_uops = Vec(params.backendParams.coreWidth, Flipped(DecoupledIO(new MicroOp)))

  // outgoing microops to issue queues
  // N issues each accept up to dispatchWidth uops
  // dispatchWidth may vary between issue queues
  val dis_uops = MixedVec(issueParams.map(ip => Vec(ip.dispatchWidth, DecoupledIO(new MicroOp))))
}

class Dispatcher(implicit params: CoreParameters) extends Module {
  import params.{commonParams, backendParams}
  import backendParams.{coreWidth, issueParams}

  val io = IO(new DispatchIO)

  val ren_readys = Wire(Vec(issueParams.size, Vec(coreWidth, Bool())))

  for (((ip, dis), rdy) <- issueParams zip io.dis_uops zip ren_readys) {
    val ren = Wire(Vec(coreWidth, Decoupled(new MicroOp)))
    ren <> io.ren_uops

    val uses_iq = ren map (u => (u.bits.iqType & ip.iqType).orR)

    // Only request an issue slot if the uop needs to enter that queue.
    (ren zip io.ren_uops zip uses_iq) foreach { case ((u, v), q) =>
      u.valid := v.valid && q
    }

    val compactor = Module(new Compactor(coreWidth, ip.dispatchWidth, new MicroOp))
    compactor.io.in <> ren
    dis             <> compactor.io.out

    // The queue is considered ready if the uop doesn't use it.
    rdy := ren zip uses_iq map { case (u, q) => u.ready || !q }
  }

  (ren_readys.reduce((r, i) =>
    VecInit(r zip i map { case (r, i) =>
      r && i
    }),
  ) zip io.ren_uops) foreach { case (r, u) =>
    u.ready := r
  }
}
