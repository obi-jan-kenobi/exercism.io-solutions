module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year = 
    if not (year `mod` 4 == 0) then False
    else if not (year `mod` 100 == 0) then True
    else if not (year `mod` 400 == 0) then False
    else True
