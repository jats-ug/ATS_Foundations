(* File: func_syntax.dats *)
#include "share/atspre_staload.hats"

fun f (x:int): int = 3 * x

implement main0 () = println! (f 4)
