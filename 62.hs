import Data.List
digits 0 = []
digits x = (x `mod` 10) : digits (x `div` 10)
-- isCube x = (round (fromIntegral x ** (1/3))) ^ 3 == x
-- e62 x = filter isCube$map (foldl1 (\x y-> 10*x +y)) $filter (\(x:xs) ->x/=0) $permutations $ digits x
-- result=map (length . e62) [round(x**3) | x<-[340..350]]

l=[x*x*x | x<-[1..90000]]
r=map (sort . digits) l
re=filter (\x-> length x==5) $ group $sort r
res=mininum $ map (\(x:xs)->length x) re -- 12
resu=filter (\(x:xs)->length x==12) re   -- this find 2 type. 
--  [[[0,1,2,3,3,4,5,5,6,7,8,9],,],[[0,1,2,3,3,4,5,6,6,7,8,9],,]]
resul1=elemIndices [0,1,2,3,3,4,5,5,6,7,8,9] r -- try the 1st type.
      -- [5026,7060,7201,8287,8383] the smallest index is 5026(5027^3)
resul2=elemIndices [0,1,2,3,3,4,5,6,6,7,8,9] r -- try the 2nd type.
       -- [5195,8123,8495,9701,9782] the smallest index is 5195
result=5027^3