module DNA (nucleotideCounts) where

import qualified Data.Map as M

nucleotides = M.fromList
    [ ('A', 0)
    , ('C', 0)
    , ('G', 0)
    , ('T', 0)
    ]

nucleotideCounts :: String -> Either String (M.Map Char Int)
nucleotideCounts xs = foldr (\x ys -> ys >>= incNucs x) (Right nucleotides) xs

incNucs :: Char -> M.Map Char Int -> Either String (M.Map Char Int)
incNucs nuc map = case M.lookup nuc map of
    Nothing -> Left "invalid DNA-String"
    Just count -> Right $ incCount nuc map

incCount :: Ord a => a -> M.Map a Int -> M.Map a Int
incCount key map = M.insertWith (+) key 1 map

    
