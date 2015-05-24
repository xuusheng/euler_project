s=[0..9]
a=[2,6,6,2,5,1,2,1,1,0]

euler24 _ [] = []
euler24 (x:xs) y = (y !! (fromInteger x)) : euler24 xs ((take (fromInteger x) y) ++ (drop ((fromInteger x) + 1) y))