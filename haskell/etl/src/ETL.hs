module ETL (transform) where

import Data.Char (toLower)
import Data.Map (Map, foldMapWithKey, fromList)

transform :: Map a String -> Map Char a
transform = foldMapWithKey (\k v -> fromList $ zip (map toLower v) (repeat k))
