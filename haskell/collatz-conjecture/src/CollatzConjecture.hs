module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz x
    | x <= 0 = Nothing
    | otherwise = go x 0
        where go num steps
                | num == 1 = Just steps
                | even num = go (quot num 2) (steps + 1)
                | otherwise = go (num * 3 + 1) (steps + 1)
