-- down from 9 to 1. 9 and 8 no permutaions is prime. 
-- 7 has many many. select the max one.
import Data.List
isprime 1 = False
isprime x = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

result=foldl (max) 0 $ filter (isprime) $ map (foldl (\x y->10*x+y) 0) $ permutations [1..7]