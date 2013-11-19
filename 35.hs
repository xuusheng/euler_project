isprime x = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

digits 0 = []
digits x = (x `mod` 10) : (digits (x `div` 10))

lists = takeWhile (<1000000) primes

-- all $  isprime $ 

circ x = all (isprime) $ map (foldl (\x y->10*x+y) 0 . reverse . take (length (digits x))) $ take (length $ digits x)$ iterate (drop 1)  $ cycle $ digits x

main = do
  print $ length $ filter (circ) lists