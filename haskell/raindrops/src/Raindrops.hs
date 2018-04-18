module Raindrops (convert) where

convert :: Int -> String
convert n = let raindrops = [ x | x <- [3,5,7], isFactor x n] >>= toRaindrop
    in if null raindrops then show n else raindrops

isFactor n x = x `mod` n == 0

toRaindrop x
    | x == 3 = "Pling"
    | x == 5 = "Plang"
    | x == 7 = "Plong"
    | otherwise = ""
