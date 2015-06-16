-- circular permutation. so only try 5!=120 round. 1 aways on top. permutate [2..6]
-- build hash table to speed up the search process.
-- It takes only about 1 second to give the answer.

import Data.List

fil x = filter (\x->x `div` 10 `mod` 10 /= 0)$ takeWhile (< 10000) $ dropWhile (< 1000) x
l3 = fil [x*(x+1) `div` 2 | x<-[1..]]
l4 = fil [x*x | x<-[1..]]
l5 = fil [x*(3*x-1) `div` 2 | x<-[1..]]
l6 = fil [x*(2*x-1) | x <- [1..]]
l7 = fil [x*(5*x -3) `div` 2 | x <- [1..]]
l8 = fil [x*(3*x -2) | x <- [1..]]

ha k n = filter (\x-> x `div` 100 == n `mod` 100) $ [l3, l4, l5, l6, l7, l8] !! (k-3)

--ans4=[(x,y,z,w)|x<-l3, y<- ha 4 x, z<-ha 5 y, w<-ha 6 z, x `elem` ha 3 w]
ans3=[(x,y,z)|x<-l3, y<- ha 5 x, z<-ha 4 y, x `elem` ha 3 z]
ans4=[(x,y,z,w)| [a,b,c]<-permutations [4,5,6], x<-l3, y<- ha a x, z<-ha b y, w<-ha c z, x `elem` ha 3 w]
ans5=[(x,y,z,w,v)| [a,b,c,d]<-permutations [4,5,6,7], x<-l3, y<- ha a x, z<-ha b y, w<-ha c z, v<-ha d w, x `elem` ha 3 v]
ans6=[[x,y,z,w,v,u]| [a,b,c,d,e]<-permutations [4,5,6,7,8], x<-l3, y<- ha a x, z<-ha b y, w<-ha c z, v<-ha d w, u<- ha e v, x `elem` ha 3 u]

result=take 1 $ map sum ans6