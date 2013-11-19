digits 0 = []
digits x = x `mod` 10 : (digits $ x `div` 10)

isprime 1 = False
isprime x = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

truncl x = all (isprime) $ map (foldl (\x y-> 10*x +y) 0) $ takeWhile (/= []) $ iterate (drop 1) $ reverse $ digits x
truncr x = all (isprime) $ map (foldr (\x y-> x +10*y) 0) $ takeWhile (/= []) $ iterate (drop 1) $ digits x

trunc x = (truncl x) && (truncr x)

main = do
  print $ sum $ filter (> 10) $ take 15 $ filter (trunc) primes