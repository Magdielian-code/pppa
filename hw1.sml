fun is_older((y1,m1,d1):int*int*int, (y2,m2,d2):int*int*int) =
    y1 < y2 orelse(y1=y2 andalso (m1 < m2 orelse (m1 = m2 andalso d1 <d2)))

fun number_in_month(x:(int * int * int) list, m_num:int) =
    if null x then 0
    else 
        let 
            val(y, m, d) = hd x
        in 
            if m = m_num then 1 + number_in_month(tl x, m_num)
            else number_in_month(tl x, m_num)
        end


fun number_in_months(dates:(int*int*int) list, months: int list) =
    if null months then 0
    else number_in_month(dates, hd months) + number_in_months(dates, tl months)
    
fun dates_in_month(date:(int*int*int) list, y:int) =
    if null date then []
    else
        if #2(hd date) = y
            then hd date :: dates_in_month(tl date, y)
        else dates_in_month(tl date, y)

fun dates_in_month(date:(int*int*int) list, y:int) =
    if null date then []
    else 
        let
            val(y, m, d) = hd date
        in 
            if m = y 
                then hd date :: dates_in_month(tl date, y)
            else dates_in_month(tl date, y)
        end


fun dates_in_months(datex:(int*int*int) list, z_months: int list) =
    if null z_months then []
    else dates_in_month(datex, hd z_months) @ dates_in_months(datex, tl z_months)


fun get_nth(x: string list, n:int) =
    if n = 1 then hd x
    else get_nth(tl x, n-1)


fun date_to_string(datey:(int*int*int)) =
        let 
            val (m,d,y) = datey
            val d2s = Int.toString d
            val y2s = Int.toString y
        in
            get_nth(["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], m)
            ^ " " ^ d2s ^ ", " ^ y2s
        end


fun number_before_reaching_sum(x:int list, sum:int): int =
    if null x then 0
    else
        let
            val head = hd x
            val tail = tl x
        in 
            if head >= sum then 0
            else 1 + number_before_reaching_sum(tail, sum - head)
        end

fun what_month(day_of_year:int) =
    let 
        val month_length = [31,28,31,30,31,30,31,31,30,31,30,31]
    in
        1 + number_before_reaching_sum(day_of_year, month_length)
    end

fun month_range(day1:int, day2:int) =
    if day1 > day2 then []
    else what_month(day1) :: month_range(day1 + 1, day2)
