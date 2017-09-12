module Leap exposing (..)


isLeapYear : Int -> Bool
isLeapYear year =
    if not (year % 4 == 0) then
        False
    else if not (year % 100 == 0) then
        True
    else if not (year % 400 == 0) then
        False
    else
        True
