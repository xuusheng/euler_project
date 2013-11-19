-- find the max result. multiply it by 2, and concat it.
digits 0 = []
digits x = x `mod` 10 : (digits (x `div` 10))

inter _ [] = False
inter [] _ = False
inter a@(x:xs) b@(y:ys) = x == y || inter xs b || inter a ys

uniq [] = True
uniq a@(x:xs) = (not (0 `elem` a)) && (not (x `elem` xs)) && (uniq xs)

uniqd x = uniq $ digits x

main = do
  print $ filter (\x -> (uniqd x) && (uniqd (2*x)) && (not  $ inter (digits x ) (digits (2*x)))) [9001..9999]