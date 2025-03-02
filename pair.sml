fun swap (pr: int*bool) =
    (#2 pr, #1 pr);

fun div_mod (x: int, y: int) =
    (x div y, x mod y);


fun sort_pair(pr : int*int) =
    if #1 pr > #2 pr then (#2 pr, #1 pr)
    else pr;

val x = (3, (4,(5,6)));
val y = (#2 x, (#1 x, #2 (#2 x)));
val ans = (#2 y, 4);


