	
sqrtIter  :: (Fractional int, Eq int, Ord int) => int -> int -> int
sqrtIter guess x
	| isGoodEnough (improveGuess guess x) guess = guess
	| otherwise = sqrtIter (improveGuess guess x) x

improveGuess :: (Fractional int) => int -> int -> int
improveGuess guess x = average guess (x / guess)

average :: (Fractional int) => int -> int -> int
average x y = (x + y) / 2

absolute :: (Ord int, Num int) => int -> int
absolute x 
	| x < 0 = (-x)
	| otherwise = x
	
isGoodEnough :: (Fractional int, Ord int) => int -> int -> Bool 
isGoodEnough x1 x0
	| (absolute(x1 - x0) / x0) < (1.0e-308) = True
	| otherwise = False
	
sqrt' :: (Fractional int, Num int, Eq int, Ord int) => int -> int
sqrt' x = sqrtIter 1 x