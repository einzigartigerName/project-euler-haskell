{-
    Solution for Project Euler Problem 12
    What is the value of the first triangle number to have over five hundred divisors?
-}

-- print solution
main = putStrLn $ show $ solution 500

-- calc solution
solution n = head $ filter (\x -> divs x > 500) $ map tri [1..]

-- calculate triangluar number
tri :: Int -> Int
tri n = div (n * (n + 1)) 2

-- get number of divisors of n
divs :: Int -> Int
divs n = length $ [x | x <- [1..n], mod n x == 0]