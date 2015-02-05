(* File: duplicate_code.dats *)
#include "share/atspre_staload.hats"

fun f (x:int): int = if x < 30 then 10 + x * 10
                               else 10 + x * 100

implement main0 () = println! (f 20)
