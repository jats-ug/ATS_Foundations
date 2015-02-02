(* File: if_not_bool.dats *)
#include "share/atspre_staload.hats"

implement main0 () = {
  val a  = if 1 then 2 else 3
  val () = println! (a:int)
}