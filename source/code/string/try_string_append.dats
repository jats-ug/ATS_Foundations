(* File: try_string_append.dats *)
#include "share/atspre_staload.hats"

implement main0 () = {
  val s3 = string_append ("Yokohama", "Station")
  val () = println! s3
}
