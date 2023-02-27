
fun PB x = x true false

val T = fn x => fn _ => x
val F = fn _ => fn y => y

val AND = fn x => fn y => x y F
val OR = fn x => fn y => x T y
val NOT = fn x => x F T
val XOR = fn x => fn y => x (NOT y) (y T F)

fun cti n =
    let
        fun add1 x = x+1
    in 
        n add1 0
    end

val zero = fn _ => fn x => x
val one = fn f => fn x => f x
val two = fn f => fn x => f(f x)
val succ = fn n => fn f => fn x=> f(n f x)

val plus = fn m => fn n => fn f => fn x => m f(n f x)
val mult = fn m => fn n => fn f => fn x => m (n f) x
val exp = fn m => fn n => n m

val isZero = fn n => n(fn _ => F)

val pair = fn x => fn y => fn z => z x y
val first = fn p => p (fn x => fn _ => x)
val second = fn p => p (fn _ => fn y => y)
