module SumOfMultiples (sumOfMultiples) where

import Data.List (takeWhile)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples [] _ = 0
sumOfMultiples factors limit = 
    sum $
    takeWhile (\x -> x < limit) $
    [ x | x <- [1..], helper factors x]

helper :: [Integer] -> Integer -> Bool
helper factors num = 
    foldr (\x ys -> if num `mod` x == 0 then True else ys) False factors
