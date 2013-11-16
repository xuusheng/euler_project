divisors n = [x | x <- [1..(n `div` 2)], n `mod` x == 0]
sumOfDivisors n = sum $ divisors n

amicable n = filter (\x -> (sumOfDivisors $ sumOfDivisors x) == x) [1..n]
a1 = amicable 10000
a2 = filter (\x -> (sumOfDivisors x) /= x) a1 --排除与自身互为友好数的数
result = sum a2

main = do
  putStrLn $ show result
