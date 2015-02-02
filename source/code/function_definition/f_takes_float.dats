(* File: f_takes_float.dats *)
#include "share/atspre_staload.hats"

fun f (x:int): int = 3 * x

implement main0 () = {
  val r  = f 4.0
  val () = println! r
}
