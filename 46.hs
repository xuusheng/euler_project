isprime x
  | x < 2 = False
  | otherwise = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

goldb n =   any (isprime) $ takeWhile (> 0) $ map (\x -> n - 2*x^2)   [1..]

result = take 1 $ filter (not . goldb) $ filter (not . isprime) $ map (\x -> 2*x + 1) [17..]
