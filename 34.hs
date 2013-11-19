fact n = product [1..n]
digits 0 = []
digits x = (x `mod` 10) : digits (x `div` 10)
curious x = (sum $map (fact) (digits x)) == x
result = sum $ filter (curious) [10..2540160]

