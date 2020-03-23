{-
    Solution for Project Euler Problem 17
    If the numbers 1 to 5 are written out in words: 
        one, two, three, four, five, then there are 
        3 + 3 + 5 + 4 + 4 = 19 letters used in total.

    If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words,
    how many letters would be used?
-}

-- print solution
main = putStrLn $ show $ solution


-- calc solution
solution = sum $ map length (map numToEn [1..1000])

-- numbers in english
single = ["zero", "one", "two", "three", "four", "five",
        "six", "seven", "eight", "nine", "ten", 
        "eleven", "twelve", "thirteen", "fourteen", "fifteen",
        "sixteen", "seventeen", "eighteen", "nineteen"]

combined = ["", "", "twenty", "thirty", "forty", "fifty",
            "sixty", "seventy", "eighty", "ninety"]

-- convert from number to english
numToEn n
	| 0 <= n && n < 20 =
        -- just one word
        single !! n
	| 20 <= n && n < 100 =
        -- ten etc
        (combined !! (div n 10))
        -- last digit
        ++ (if (mod n 10 == 0) then "" else (single !! (mod n 10)))
	| 100 <= n && n < 1000 =
        -- hundreds
        (single !! (div n 100)) ++ "hundred"
        -- if not x hundred then again with only last digits
		++ (if (mod n 100 /= 0) then ("and" ++ numToEn (mod n 100)) else "")
	| 1000 <= n && n < 1000000 =
        -- thousands
        numToEn (div n 1000) ++ "thousand"
        -- hundrets etc
		++ (if (mod n 1000 /= 0) then (numToEn (div n 1000)) else "")