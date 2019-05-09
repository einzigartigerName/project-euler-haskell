{-
    Solution for Project Euler Problem 10
    Find the sum of all the primes below two million.
-}

-- print solution
main = putStrLn $ show $ sum $ primes 2000000

-- list of primes smaller n
primes n = filter isPrime [1..(n - 1)]

-- simple function to check if n is prime
isPrime n = n > 1 && [] == [x| x <- [2..(n - 1)], mod n x == 0]