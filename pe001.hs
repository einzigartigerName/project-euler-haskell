{-
    Solution for Project Euler Problem 2:
    Find the sum of all the multiples of 3 or 5 below 1000.
-}
-- print solution
main = putStrLn (show $ solution 1000)
-- create list and sum it up
solution limit = sum [x | x <- [1..(limit - 1)], mod x 3 == 0 || mod x 5 == 0]