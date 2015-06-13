-- 2..21
-- 2..9

digits 0 = []
digits x = x `mod` 10 : digits (x `div` 10)

result=length $concat $ map (\x -> (filter (\y->length(digits(y)) == x) (map (^x) [1..9]))) [1..21]