{-
    Solution for Project Euler Problem 15
    Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down,
    there are exactly 6 routes to the bottom right corner.
    How many such routes are there through a 20×20 grid?
-}

-- print solution
main = putStrLn $ show solution

-- solution binomial coeff
solution = binomial 40 20

-- calc binomial
binomial :: Integer -> Integer -> Integer
binomial n k = div (fac n) ((fac k) * (fac (n - k)))

-- factorial
fac :: Integer -> Integer
fac n = product  [1..n]