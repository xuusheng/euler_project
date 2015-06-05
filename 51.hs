-- 依照下面的顺序试，只要找到实例，即中止尝试。应该把这个过程也包装到程序里面去。
-- xxxab No
-- xxaxb No
-- xaxxb No
-- axxxb No

-- xxxabc No
-- xxaxbc No
-- xxabxc No
-- xaxxbc No
-- xaxbxc 233 121313
-- xabxxc No
-- axxxbc No
-- axxbxc No
-- axbxxc No
-- abxxxc No



import Data.List
isprime x
  | x < 2 = False
  | otherwise = all (\p -> x `mod` p > 0) (factorsToTry x) 
  where 
    factorsToTry x = takeWhile (\p -> p*p <= x) primes 

primes= 2 : [x | x <- [3..], isprime x] 

list2 = takeWhile (<100) $dropWhile (<10) primes
        -- 所有两位质数
list3 = takeWhile (<1000) $dropWhile (<100) primes
        -- 所有三位质数

to5 x = x `div` 100 * 10000 + x `div` 10 `mod` 10 * 100 + x `mod` 10
        -- 转化为5位或6位数

boolist x = map (isprime) $take 10 $iterate (+ 101010) $ to5 x
            -- 打印出真值表，对于x居首的情况，第一个True不算。

howmany x = foldl (\x y-> (if y then x + 1 else x)) 0 $ boolist x
            -- 计算家族中有多少个质数

indices = elemIndices 8 $ map (howmany) list3
          -- 初步筛选出结果，还得进一步用boolist验证
