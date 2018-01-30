module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify n
  | n <= 0 = Nothing
  | (sum $ divisors n) == n = Just Perfect
  | (sum $ divisors n) > n = Just Abundant
  | otherwise = Just Deficient


divisors :: Int -> [Int]
divisors n = [ x | x <- [1..(n - 1)], n `mod` x == 0]
