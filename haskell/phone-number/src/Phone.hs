module Phone (number) where

import Data.Char (isAlpha, isAlphaNum, isSpace)

number :: String -> Maybe String
number xs = do
    phone <- validateLength $ (filterNum xs)
    (areaCode, exchangeCode) <- return $ takeSubLists phone
    validateAreaCode areaCode
    validateExchangeCode exchangeCode
    return phone

filterNum :: [Char] -> [Char]
filterNum = filter isNum

isNum :: Char -> Bool
isNum x = isAlphaNum x && (not $ isAlpha x)

validateAreaCode :: String -> Maybe String
validateAreaCode x
    | head x == '0' = Nothing
    | head x == '1' = Nothing
    | length x /= 3 = Nothing
    | otherwise = Just x


validateExchangeCode :: String -> Maybe String
validateExchangeCode x
    | head x == '0' = Nothing
    | head x == '1' = Nothing
    | length x /= 7 = Nothing
    | otherwise = Just x


validateLength :: String -> Maybe String
validateLength x
    | head x == '1' && length x == 11 = Just $ tail x
    | length x == 10 = Just x
    | otherwise = Nothing

takeSubLists x = ((take 3 x), (take 7 $ drop 3 x))
