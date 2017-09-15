module Pangram (isPangram) where

import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = all (\x -> x `elem` lowered) alphabet
    where lowered = map toLower text


alphabet :: String
alphabet = "abcdefghijklmnopqrstuvwxyz"
