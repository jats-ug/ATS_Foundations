(* File: bool_op.dats *)
#include "share/atspre_staload.hats"

val () = println! (true && true)
val () = println! (true && false)
val () = println! (true || false)
val () = println! (false || false)
val () = println! (not true)
val () = println! (not false)
val () = println! (not (false || not false && not false))
val () = println! (not (false || (not false) && (not false)))

implement main0 () = ()
