module Grains (square, total) where
import Data.List (unfoldr)
square :: Integer -> Maybe Integer
square n
    | n <= 0 = Nothing
    | n > 64 = Nothing
    | otherwise = Just $ unfoldr (\x -> Just (x, x * 2)) 1 !! (fromIntegral (n - 1))

total :: Integer
total = sum $ take 64 $ unfoldr (\x -> Just (x, x * 2)) 1
