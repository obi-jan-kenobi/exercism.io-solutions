module Diamond (diamond) where

import Data.Monoid ((<>))

diamond :: Char -> [String]
diamond c = buildDiamond $ buildLine <$> (insertChar (length diamond)) <$> diamond
  where diamond = zip [0..] (alphabet c)

alphabet :: Char -> [Char]
alphabet c = ['A' .. c]

spaces :: Int -> String
spaces n = take n $ repeat ' '

appendReversedInit :: [a] -> [a]
appendReversedInit = tail . reverse

insertChar :: Int -> (Int, Char) -> String
insertChar length (pos, char) = spaces (length - pos - 1) <> [char] <> spaces pos

buildLine :: String -> String
buildLine line = line <> appendReversedInit line

buildDiamond :: [String] -> [String]
buildDiamond str  = str <> appendReversedInit str
