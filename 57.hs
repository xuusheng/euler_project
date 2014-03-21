digits:: Integer -> [Integer]
digits 0 = []
digits x = x `mod` 10 : (digits (x `div` 10))

p = 3:7:zipWith (\x y -> x + 2*y) p (tail p)
q = 2:5:zipWith (\x y -> x + 2*y) q (tail q)

n = zipWith (\x y-> (length (digits x)) - (length (digits y))) p q

main = do
  print $ sum $ take 1000 n