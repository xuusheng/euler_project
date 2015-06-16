import Data.List
l=[(2*k*m*(m+n), (k*m*m+k*n*n, min (k*m*m-k*n*n) (2*k*m*n), max (k*m*m-k*n*n) (2*k*m*n))) | n<-[1..611], m<-[(n+1)..floor((sqrt(fromInteger(n*n+3000000))-fromInteger(n))/2)], k<-[1..(750000 `div` (m*(m+n)))]]
s=sortBy (\x y->(fst x) `compare` (fst y)) l
g=groupBy (\x y->fst x==fst y) s
n=map (nub) g
result=length $ filter (==1) $map length n
