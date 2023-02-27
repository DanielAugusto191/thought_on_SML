
fun f x = x + 1
val x = 2
val y = 3

fun g [] = NONE
  | g (h::_) = h 
  

fun fact 0 = 1
    | fact n = n*fact(n-1)

fun inv nil = []
    | inv (h::t) = inv t @ [h]

fun max (h::nil) = h
  | max (h::t) = 
    if h > max t then
        h
    else
        max t
  | max nil = ~1

fun min nil = ~1
    | min (h::nil) = h
    | min (h::t) =
        let val x = min t in
            if h < x then h else x
        end



fun v1 x y = x * y
val t2 = fn x => v1 x 2
