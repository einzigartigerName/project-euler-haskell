{-
    Solution for Project Euler Problem 25
    What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
-}

-- print solution
main = putStrLn $ show solution

-- calc solution
solution = length (takeWhile (< 10^(digitCount - 1)) fib)

-- fibonacci
fib = 0:1:(zipWith (+) fib (tail fib))

digitCount = 1000