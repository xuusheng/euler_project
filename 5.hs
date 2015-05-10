-- my solution

let euler5 = 1 : zipWith (\x y -> lcm x y) foo [1..]
 euler5 !! 20

 -- another solution
 foldl lcm 1 [2..20]