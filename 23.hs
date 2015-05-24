-- this takes very long time. over 30 minutes.

divisors n = [x | x <- [1..(n `div` 2)], n `mod` x == 0]
sumOfDivisors n = sum $ divisors n
abundants=filter (\x->sumOfDivisors x > x) [12..28111]
-- sums=[x+y|x<-abundants,y<-takeWhile (<28124-x) $dropWhile (<x) abundants]
-- usum=nub sums
-- result = (sum [1..28123]) - (sum usum)
-- result = 4179871
sieve [] y = y
sieve _ [] = []
sieve a@(x:xs) b@(y:ys)
  | 2*x > y = y:(sieve a ys)
  | True = sieve xs (filter (\w->not (w-x `elem` a)) b)


-- after modified, it takes ~10 minutes.

