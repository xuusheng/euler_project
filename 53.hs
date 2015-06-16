fact x = foldl (*) 1 [1..x]
choose x y = (fact x) `div` (fact y) `div` (fact (x-y))
a=[choose x y|x<-[23..100], y<-[1..x]]
b=filter (>1000000) a
result = length b