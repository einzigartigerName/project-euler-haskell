{-
    Solution for Project Euler Problem 23
    Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
-}

import Data.List (nub)

-- print solution
main = putStrLn $ show $ solution 28123

-- calc solution
solution max = sum (filter (not . sumAbundants)  [1..max])

-- list of abundants
li_abundant = filter sumAbundants [1..]

-- check if n is sum of two abundants
sumAbundants :: Int -> Bool
sumAbundants n = any (\x -> abundant (n - x)) (takeWhile (< n) li_abundant)

-- check if n is abundant
abundant :: Int -> Bool
abundant n = divSum n > n

-- sum of divisor for n
divSum :: Int -> Int
divSum n = sum ((1:) $ nub $ concat [ [x, div n x] | x <- [2..limit], rem n x == 0 ])
    where limit = (floor.sqrt.fromIntegral) n