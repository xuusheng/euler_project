digits 0 = []
digits x = x `mod` 10 : (digits $ x `div` 10)
lists =concat $  map (reverse . digits) [1..]
main = do
  print $ product $ map (lists !!) [0, 9, 99, 999, 9999, 99999, 999999]
    -- this list can be made up from "take 7 $ iterate (\x->10*x+9) 0"