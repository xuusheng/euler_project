primes = let { sieve xs (p:ps) = let (h,t)=span (< p*p) xs in 
                                   h ++ sieve (filter ((> 0).(`rem`p)) t) ps } 
           in 2 : 3 : sieve [5,7..] (tail primes)
