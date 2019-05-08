{-
    Solution for Project Euler Problem 6
    Find the difference between the sum of the squares
    of the first one hundred natural numbers and the square of the sum.
-}

-- print solution
main = putStrLn $ show (solution 100)
solution n = (sumSq n) - (sqSum n)

-- square numbers from 1 to n and add them up
sqSum n = sum (map (^2) [1..n])

-- add numbers from 1 to n and then squre it
sumSq n = (sum [1..n])^2