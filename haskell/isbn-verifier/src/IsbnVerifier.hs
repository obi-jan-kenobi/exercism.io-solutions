module IsbnVerifier (isbn) where

import Data.Char (isAlpha, isAlphaNum, digitToInt)
import Data.List (elemIndex)
import Data.Maybe (fromMaybe)
import Control.Monad ((>=>))

isbn :: String -> Bool
isbn xs = fromMaybe False $ fmap (validate . checksum . toNumbers) $ (checkLength >=> checkX) $ clean xs

clean = filter (\x -> (isAlphaNum x && (not $ isAlpha x)) || x == 'X')

toNumbers :: String -> [Int]
toNumbers = fmap digitToInt'

digitToInt' :: Char -> Int
digitToInt' 'X' = 10
digitToInt' x = digitToInt x

checkLength :: String -> Maybe String
checkLength xs = if length xs /= 10 then Nothing else Just xs

checkX :: String -> Maybe String
checkX xs = case elemIndex 'X' xs of
    Nothing -> Just xs
    Just idx -> if idx < 9 then Nothing else Just xs 

checksum :: [Int] -> Int
checksum = snd . (foldr (\x (num, xs) -> (num + 1, x * num + xs)) (1, 0))

validate = ((==) 0) . ((flip (mod)) 11)
