{-
    Solution for Project Euler Problem 21
    Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
    If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
    
    Evaluate the sum of all the amicable numbers under 10000.
-}

-- print solution
main = putStrLn $ show $ solution 10000

-- calc solution
solution n = sum [m | m <- [1..n], amicable m]

-- check if amicable
amicable :: Int -> Bool
amicable n =
    let m = divSum n in
    (m /= n) && (divSum m) == n

-- sum of divisor for n
divSum :: Int -> Int
divSum n = sum [k | k <- [1..n-1], (mod n k) == 0]