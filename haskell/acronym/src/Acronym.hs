module Acronym (abbreviate) where

import Data.Char (toUpper, isUpper, isAlpha, isSpace)

abbreviate :: String -> String
abbreviate = firstAndUppers . words . map hyphenToSpace

firstAndUppers :: [String] -> String
firstAndUppers = concat . fmap (uppers . upperFirst . filter (\x -> isAlpha x || isSpace x)) 

uppers :: String -> String
uppers [] = []
uppers word = if all isUpper word then [head word] else filter isUpper word

hyphenToSpace :: Char -> Char
hyphenToSpace '-' = ' '
hyphenToSpace c = c

upperFirst :: String -> String
upperFirst [] = []
upperFirst (x:xs) = (toUpper x) : xs
