{-
    Solution for Project Euler Problem 14
    The following iterative sequence is defined for the set of positive integers:

        n → n/2 (n is even)
        n → 3n + 1 (n is odd)

    Using the rule above and starting with 13, we generate the following sequence:

        13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

    Which starting number, under one million, produces the longest chain?
-}

-- print solution
main = putStrLn $ show $ solution

-- calc sequences from 0 to 10^6 and get value with longest chain
solution = index (map collatz [0..10^6]) 0 (-1) 0

-- sequence and get length of chain
collatz :: Integer -> Int
collatz 0 = 0
collatz 1 = 1
collatz n = (collatz (if mod n 2 == 0 then (div n 2) else (3 * n + 1))) + 1

-- get index of max value
-- List -> Current Index -> Max Value -> Max Index
index :: [Int] -> Int -> Int -> Int -> Int
index [] _ _ i = i
index (x:xs) current max i = if (x > max)
    then index xs (current + 1) x current
    else index xs (current + 1) max i