fun sum_list(xs: int list) =
    if null xs then 0
    else hd xs + sum_list(tl xs);


fun countdown (x:int) =
    if x = 0 then []
    else x::countdown(x-1);

fun append (xd: int list, yd: int list ) =
    if xd = [] then yd
    else hd x :: append((tl xd), yd);

fun sum_pair_list(xs: (int * int) list) =
    if null xs then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs);

