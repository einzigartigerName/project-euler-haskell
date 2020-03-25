{-
    Solution for Project Euler Problem 20
    Find the sum of the digits in the number 100!
-}

-- print solution
main = putStrLn $ show $ solution 100

-- calc solution
solution n = sumDigits $ product [1..n]

-- sum digits of integer
sumDigits :: Integer -> Integer
sumDigits 0 = 0
sumDigits n = (mod n 10) + (sumDigits (div n 10))