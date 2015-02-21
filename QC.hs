import Test.QuickCheck
import Data.List
main = verboseCheck ((prop_idempotent myReverse) :: [Integer] -> Bool)

{-
--quicksort
--probably works

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort lhs ++ [x] ++ qsort rhs
    where lhs = filter  (< x) xs
          rhs = filter (>= x) xs
-}

--myReverse
  
myReverse :: [String] -> [String]
myReverse [] = []
myReverse [a] = [a]
myReverse (x:xs) = myReverse(xs) ++ [x]

prop_idempotent :: Eq a => ([a] -> [a]) -> [a] -> Bool
prop_idempotent func xs = func (func xs) == xs

{-
--unused

prop_minimum xs = head (qsort xs) == minimum xs
-}
