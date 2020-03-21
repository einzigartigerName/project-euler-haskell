{-
    Solution for Project Euler Problem 16
    2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

    What is the sum of the digits of the number 2^1000?
-}

-- print solution
main = putStrLn $ show solution

-- add digits of 2^1000
solution = sumDigits (2^1000)

-- sum digits of integer
sumDigits :: Integer -> Integer
sumDigits 0 = 0
sumDigits n = (mod n 10) + (sumDigits (div n 10))