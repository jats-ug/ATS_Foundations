(* File: if_then_else.dats *)
#include "share/atspre_staload.hats"

implement main0 () = {
  val a  = if true  then 1 else 2
  val b  = if false then 1 else 2
  val () = println! (a:int)
  val () = println! (b:int)
}