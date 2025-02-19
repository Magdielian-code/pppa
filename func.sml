fun pow(x: int, y:int) =
    if y = 0 then 1
    else x * pow(x, y-1);

fun cube (x: int, y: int) =
    if y = 0 then 1
    else x * x * x;

val r = cube (6,2)