-- sum of the result
import Data.List

curious x = (x !! 3) `mod` 2 == 0 && 
            (x !! 2 + x !! 3 + x !! 4) `mod` 3 == 0 && 
            (x !! 5) `mod` 5 == 0 && 
            (2 * (x !! 4) + 3 * (x !! 5) + (x !! 6)) `mod` 7 == 0 && 
            (x !! 5 + x !! 7 - x !! 6) `mod` 11 == 0 &&
            (9 * (x !! 6) + 10 * (x !! 7) + (x !! 8)) `mod` 13 == 0 &&
            (15 * (x !! 7) + 10 * (x !! 8) + (x !! 9)) `mod` 17 == 0
            
map (foldl (\x y->10*x+y) 0)$filter (curious) $ permutations [0..9]