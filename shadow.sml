(* to explain shadowing  *)
val a = 10
(* a: int
    a --> 10 *)

val b = a * 2
(* b: int
    b --> 20 *)
val a = 5 (* shadowing- this is not an assignment statement, wea ren't mutating by any means *)
(* a: int
    a --> 5 *)

val c = b
(* c: int
    c --> 20 *)

val x = 12 (* x --> 12 *)
val n = 2 + x (* n --> 14 *)
val x = n - 14 (* x --> 0 *)
val b = if n = x then 8 else 5 (* b--> 5 *)
val a = if b = 5 then x else b (* a -->0 *)