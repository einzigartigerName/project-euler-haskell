{-
    Solution for Project Euler Problem 19
    1 Jan 1900 was a Monday.
    How many Sundays fell on the first of the month
    during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
-}

-- print solution
main = putStrLn $ show solution

-- calc sundays
solution = sum [1 | y <- [1901..2000], m <- [1..12], day y m 1 == 0]

-- Sunday = 0; Monday = 1; ...
-- day :: Day of Month -> Month -> Year
day :: Int -> Int -> Int -> Int
day d m y =
    let y1 = div y 100 in
    let y2 = mod y 100 in
    mod (d + (div (13 * (m + 1)) 5) + y2 + (div y2 4) + (div y1 4) - (2 * y1)) 7 - 1