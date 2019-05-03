{-
    Solution for Project Euler Problem 5
    What is the smallest positive number that is evenly divisible
    by all of the numbers from 1 to 20?
-}

-- printing solution
main = do
    putStrLn ("Build-in functions: " ++ show (solution 1 20))
    putStrLn ("my own functions: " ++ show (mysolution 1 20))

{- calculating using build-in functions -}
solution x y = foldl lcm 1 [x..y]

{- calculatin using own functions -}
mysolution x y = foldleft mylcm 1 [x..y]

-- foldleft = foldl
foldleft :: (b -> a -> b) -> b -> [a] -> b
foldleft f acc [] = acc
foldleft f acc (h:tl) = foldleft f (f acc h) tl

-- mylcm = lcm
mylcm :: Int -> Int -> Int
mylcm 0 _ = 0
mylcm _ 0 = 0
mylcm x y =  abs ((x `quot` (gcd x y)) * y)


-- mygcd = gcd
mygcd :: Int -> Int -> Int
mygcd 0 b = abs b
mygcd a 0 = abs a
mygcd a b = mygcd b $ rem a b