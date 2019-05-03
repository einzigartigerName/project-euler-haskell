{-
    Solution for Project Euler Problem 2
    By considering the terms in the Fibonacci sequence whose values 
    do not exceed four million, find the sum of the even-valued terms.
-}

-- print solution
main = putStrLn (show $ solution 4000000)

-- sum everything up
solution limit = sum $ filter (\x -> mod x 2 == 0) $ takeWhile (<= limit) fib

-- infinit list (possible cause haskell is lazy)
fib = 1 : 2 : zipWith (+) fib (tail fib)
