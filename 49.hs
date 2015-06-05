-- dirty work
import Data.List
isprime x
  | x < 2 = False
  | otherwise = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

uniqp [] = True
uniqp (x:xs) = (not $ x `elem` xs) && uniqp xs

listeq [] _ = True
listeq (x:xs) y = (x `elem` y) && (listeq xs y)


digits 0 = []
digits x = x `mod` 10 : digits (x `div` 10)

result=filter ((\x -> ((all (isprime) x) && (all (listeq (digits (head x))) (map (digits) x)))) . take 3 . iterate (+ 3330)) [2000..4000]
