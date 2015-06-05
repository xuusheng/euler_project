-- the argument of  (/) must be Num.

import Foreign.Marshal.Utils

isprime:: Integer -> Bool
isprime x
  | x < 2 = False
  | otherwise = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

f1 n =  (2*n-2)^2+1 

f2 n =  (2*n-1)^2-3*(2*n-2)

f3 n =  (2*n-1)^2-2*n+2


ll:: Num a => [Integer] -> [a]
ll = (scanl1 (+)) .  (map (sum .  (\x -> map ($ x) $ map ((fromBool . isprime) .) [f1,f2,f3])))

pp:: Num a => [a] -> [a]
pp = map (\x->4*x-3)

rr = zipWith (/) (ll [1..]) (pp [1..])

result = 2 * (length $ takeWhile (>0.1) $ drop 1 rr) + 3