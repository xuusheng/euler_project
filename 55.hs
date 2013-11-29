-- pipe the result to "sed 's/,/ /g'|wc -w"
-- just to try sed and wc.
-- note: don't use Int, because this type has a max limit.
-- the revNum is concise but not efficient.
-- myrevNum is more efficient but not concise.

revNum:: Integer -> Integer
revNum = read . reverse . show

digits:: Integer -> [Integer]
digits 0 = []
digits x = x `mod` 10 : (digits (x `div` 10))

myrevNum:: Integer -> Integer
myrevNum x = foldl1 (\x y-> 10*x+y) $digits x

palindrome:: Integer -> Bool
palindrome x = x == myrevNum x

nextIt:: Integer -> Integer
nextIt x = x + myrevNum x

nonlychel:: Integer -> Integer -> Bool
nonlychel _ 0 = False
nonlychel x n = palindrome x || (nonlychel (nextIt x) (n - 1))
               

lychel:: Integer -> Bool
lychel x = not (nonlychel (nextIt x) 50)

main = do
  print $ filter (lychel) [1..9999]
