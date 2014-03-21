digits:: Integer -> [Integer]
digits 0 = []
digits x = x `mod` 10 : (digits (x `div` 10))

main = do
  print $ maximum $ map (foldl1 (\x y->x+y) . digits) $concat $ map (\x -> map (^x) [1..100]) [1..100]