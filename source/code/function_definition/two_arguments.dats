(* File: two_arguments.dats *)
#include "share/atspre_staload.hats"

fun g (x:int, y:int): int = x * x + y * y - 4

implement main0 () = println! (g (3, 2))
