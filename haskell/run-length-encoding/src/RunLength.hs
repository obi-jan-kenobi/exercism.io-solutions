module RunLength (decode, encode) where

import Data.List (group)
import Data.Char (isAlpha, isSpace)

decode :: String -> String
decode [] = []
decode encodedText = concat $ fmap (expand . compress) $ splitAlpha encodedText
    where compress x = if (length x) == 1
                            then (1, head x)
                            else (read $ init x, last x)

splitAlpha :: String -> [String]
splitAlpha = foldr (\x ys -> 
    if (isAlpha x || isSpace x)
    then [x] : ys
    else (x : (head ys)) : tail ys)  []

expand :: (Int, Char) -> String
expand (x, c) = replicate x c

encode :: String -> String
encode = concat . compress . group

compress :: [String] -> [String]
compress = map (\x -> if length x == 1 then x else (show $ length x) ++ [head x])

