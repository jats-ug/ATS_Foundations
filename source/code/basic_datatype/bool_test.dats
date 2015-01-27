(* File: bool_test.dats *)
#include "share/atspre_staload.hats"

val () = println! (2 < 3)
val () = println! (2 < 3 && 2.0 >= 3.0)
val () = println! (2 < 3 || 2.0 = 3.0)
val () = println! (not (3 < 2))

implement main0 () = ()
