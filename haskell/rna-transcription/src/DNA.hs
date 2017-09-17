module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA = sequence . fmap complement

complement :: Char -> Maybe Char
complement 'G' = Just 'C'
complement 'C' = Just 'G'
complement 'T' = Just 'A'
complement 'A' = Just 'U'
complement _ = Nothing
