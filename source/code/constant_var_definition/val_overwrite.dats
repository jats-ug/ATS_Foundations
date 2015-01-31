(* File: val_overwrite.dats *)
#include "share/atspre_staload.hats"

implement main0 () = {
  val a = 1
  val b = a
  val () = println! a
  val () = println! b
  val a = 2
  val () = println! a
  val () = println! b
}
