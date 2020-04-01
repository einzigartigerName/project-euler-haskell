{-
    Solution for Project Euler Problem 24
    What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
-}

import Data.List

-- print solution
main = putStrLn $ show solution

-- calc solution
solution = (sort $ permutations ['0'..'9']) !! 999999