-- at first, i find a solution, (3, 37, 67, 5923, 194119), but this 
-- is not the lowest answer. However, this answer give me a hint that, 
-- the prime should not be larger than 194119.
-- after modified, i got two answer. and the latter one is what i want.
-- [(7,1237,2341,12409,18433),(13,5197,5701,6733,8389)]
-- it takes about several minutes.

import Data.List
digits:: Integer -> [Integer]
digits 0 = []
digits x = x `mod` 10 : (digits (x `div` 10))

isprime:: Integer -> Bool
isprime x
  | x < 2 = False
  | otherwise = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

con x y =  foldl1 (\x y-> 10*x + y) $ reverse $ (digits y) ++ (digits x)

p2=[(x,y)|x<-(take 100 primes), y<-(take 1000 primes), x<y, isprime (con x y), isprime(con y x)]

p2'=sortBy (\(a,b) (c,d)-> (a+b) `compare` (c+d)) p2

p3=[(x,y,z)|(x,y)<-p2', z<-(take 1000 primes), y<z, isprime (con x z), isprime (con z x), isprime (con y z), isprime (con z y)]

p3'=sortBy (\(a,b,c) (d,e,f)-> (a+b+c) `compare` (d+e+f)) p3
p4=[(x,y,z,w)|(x,y,z)<-p3', w<-(take 2000 primes), z<w, isprime (con x w), isprime (con w x), isprime (con y w), isprime (con w y), isprime (con z w), isprime (con w z)]

p4'=sortBy (\(a,b,c,d) (e,f,g,h)-> (a+b+c+d) `compare` (e+f+g+h)) p4

p6=[(x,y,z,w,v)|(x,y,z,w)<-p4', v<-(take 17510 primes), w<v, isprime (con x v), isprime (con v x), isprime (con y v), isprime (con v y), isprime (con z v), isprime (con v z), isprime (con w v), isprime (con v w)]
