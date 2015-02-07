(* File: duplicate_code.dats *)
#include "share/atspre_staload.hats"

fun f (x:int): int = 10 + x * ((if x < 30 then 10
                                          else 100):int)

implement main0 () = println! (f 20)
