-- because the sum of first 546 primes is just below one million,
-- and sum of first 547 primes is just over one million, so try 546 first.
import Data.List
isprime 1 = False
isprime x = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

e50 a@(x:xs) n
  | (sum $ take n a) >= 1000000 = 0
  | isprime $ sum $ take n a = sum $ take n a
  | otherwise = e50 xs n

euler50 a@(x:xs) n
  | (e50 a n) == 0 = euler50 a (n-1)
  | otherwise = e50 a n
                
result = euler50 primes 546                