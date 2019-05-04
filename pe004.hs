{-
    Solution for Project Euler Problem 4
    Find the largest palindrome made from the product of two 3-digit numbers.
-}

main = putStrLn $ show (solution 3)

solution n =
    let li = [(10^(n - 1))..(10^n - 1)]
    in
    maximum [a * b| a <- li, b <- li, palindrome (a*b)]

palindrome :: Int -> Bool
palindrome x = x == (reverseInt x)

reverseInt :: Int -> Int
reverseInt =
    impl 0 where
    impl acc 0 = acc
    impl acc n = impl (acc * 10 + (mod n 10)) (div n 10)