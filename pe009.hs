{-
    Solution for Project Euler Problem 9
    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
-}

-- print solution
main = putStrLn $ show (solution 1000)

-- caclulating all possible solutions and take first
solution n = head [a * b * (n - a - b) | a <- [1..n], b <- [(a + 1)..n], isTriangle a b (n - a - b)]

-- check if values generate triangle
isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c =  a < b && b < c
                    && (a * a) + (b * b) == (c * c)