fun count(from: int, to: int) =
    if from = to 
        then to::[]
        else from :: count(from+1, to)

fun count_from(x:int): int list =
    if x=1
        then [x]
    else x::count_from(x-1)

fun count_from1(x:int) =
    let
        fun count1(from:int) =
            if from = x
                then x::[]
            else from::count1(from+1)
    in
        count1(1)
    end
