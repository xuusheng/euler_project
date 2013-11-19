base _ 0 = []
base n x = x `mod` n : base n (x `div` n)

a = filter (\x -> ((base 2 x) == (reverse (base 2 x))) && ((base 10 x) == (reverse (base 10 x)))) [1..1000000]
