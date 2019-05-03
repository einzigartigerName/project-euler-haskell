{-
    Solution for Project Euler Problem 3:
    What is the largest prime factor of the number 600851475143 ?
-}
-- print solution
main = putStrLn $ show (solution (600851475143 :: Integer))

solution n =
    let p = small n
    in
    if p == n then p
    else solution (div n p)

-- calculate smallest prime
small n = head [x | x <- [2..n], mod n x == 0]