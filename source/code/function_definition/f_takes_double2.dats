(* File: f_takes_double2.dats *)
#include "share/atspre_staload.hats"

fun f2 (x:double): double = 3 * x

implement main0 () = {
  val r  = f2 4.0
  val () = println! r
}
