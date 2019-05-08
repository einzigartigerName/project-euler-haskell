{- 
    Solution for Project Euler Problem 6
    What is the 10 001st prime number?
-}

-- print solution
main = putStrLn $ show (solution !! 10000)

-- infinit list with primes (possible cause haskell is lazy)
-- sieve all multiple of previous primes from natural numbers
solution = sieve [2..] where sieve (p:xs) = p : sieve (filter (\x -> mod x p /= 0) xs)