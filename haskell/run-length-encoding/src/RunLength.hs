module RunLength (decode, encode) where

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
encode [] = []
encode text = go (head text) (head $ drop 1 text) 0 (tail text)
        where 
            go _ _ _ [] = []
            go prev curr count rest = 
                if (prev == curr) 
                then go curr (head rest) (count + 1) (tail rest)
                else (show $ count + 1) ++ prev : go curr (head rest) 0 (tail rest)
