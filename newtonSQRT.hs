sqrtIter  :: (Fractional int, Num int, Eq int) => int -> int -> int -> int
sqrtIter i guess x
	| i == 0 = guess
	| otherwise = sqrtIter (i - 1) (improveGuess guess x) x

improveGuess :: (Fractional int) => int -> int -> int
improveGuess guess x = average guess (x / guess)

average :: (Fractional int) => int -> int -> int
average x y = (x + y) / 2
