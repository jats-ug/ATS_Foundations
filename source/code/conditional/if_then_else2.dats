(* File: if_then_else2.dats *)
#include "share/atspre_staload.hats"

implement main0 () = {
  val a  = if 1 < 2  then 3 else 4
  val b  = if 3 + 4 < 5 then 1 else 2
  val () = println! (a:int)
  val () = println! (b:int)
}