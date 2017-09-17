module Acronym (abbreviate) where

import Data.Char (toUpper)

abbreviate :: String -> String
abbreviate = undefined

firstAndUppers :: [String] -> String
firstAndUppers [] = []
firstAndUppers words = concat . fmap (\word -> head word ++ filter isUpper $ tail word) words
