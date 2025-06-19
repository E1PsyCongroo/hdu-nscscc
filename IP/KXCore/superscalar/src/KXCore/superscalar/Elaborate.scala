package KXCore.superscalar

import KXCore.common._
import KXCore.common.peripheral.CacheParameters
import KXCore.common.peripheral.AXIBundleParameters

object Elaborate extends App {
  val firtoolOptions = Array(
    "--lowering-options=" + List(
      "disallowLocalVariables",
      "disallowPackedArrays",
      "locationInfoStyle=wrapInAtSquareBracket",
    ).mkString(","),
    "-default-layer-specialization=enable",
  )

  implicit val params: CoreParameters = CoreParameters()
  import params.{commonParams, axiParams, icacheParams}
  circt.stage.ChiselStage.emitSystemVerilogFile(
    new peripheral.ICache,
    args,
    firtoolOptions,
  )
}
