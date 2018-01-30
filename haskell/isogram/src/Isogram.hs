module Isogram (isIsogram) where

import Data.Char (isLetter, toLower)
import Data.List (nub)

isIsogram :: String -> Bool
isIsogram w = let chars = map (toLower) $ filter (isLetter) w
  in nub chars == chars
