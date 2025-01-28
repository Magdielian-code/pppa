(* This is a comment. this is our frist program *)

val x = 34;
(* dynamic environment: x --> 34 *)

val y = 17;
(* dynamic environment: x --> 34, y --> 17 *)
val z = (x +y) + (y + 2);
(* dynamic environment: x --> 34, y --> 17, z --> 70 *)

val abs_of_z = if z < 0 then 0 -z else z;
val test = 12 + (if 28 > 56 then 18 else 11)


if e1 then e2 else e3
(* where e1, e2, e3 are expressions and e1 is a boolean expression *)
