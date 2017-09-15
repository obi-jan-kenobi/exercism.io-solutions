module Bob (responseFor) where

import Data.Char (toUpper, toLower, isSpace)

data Response
    = Question
    | Yelling
    | Silence
    | Whatever

responseFor :: String -> String
responseFor = respondTo . determinePhrase 

respondTo :: Response -> String
respondTo r =
    case r of
        Question -> "Sure."
        Yelling -> "Whoa, chill out!"
        Silence -> "Fine. Be that way!"
        Whatever -> "Whatever."

determinePhrase :: [Char] -> Response
determinePhrase p
    | trimmed == [] = Silence 
    | ((fmap toUpper trimmed == trimmed) && (fmap toLower trimmed /= trimmed)) = Yelling
    | ((head $ reverse trimmed) == '?') = Question
    | otherwise = Whatever
    where trimmed = filter (not . isSpace) p

