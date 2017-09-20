module Acronym (abbreviate) where

import Data.Char (toUpper, isUpper, isAlpha, isSpace)

abbreviate :: String -> String
abbreviate = firstAndUppers . words . filter isAlpha

firstAndUppers :: [String] -> String
firstAndUppers = concat . fmap (uppers . upperFirst) 

uppers :: String -> String
uppers [] = []
uppers word = if all isUpper word then [head word] else filter isUpper word

upperFirst :: String -> String
upperFirst [] = []
upperFirst (x:xs) = (toUpper x) : xs
