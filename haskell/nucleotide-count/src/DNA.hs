module DNA (nucleotideCounts) where

import qualified Data.Map as M

nucleotides = M.fromList
    [ ('A', 0)
    , ('C', 0)
    , ('G', 0)
    , ('T', 0)
    ]

nucleotideCounts :: String -> Either String (M.Map Char Int)
nucleotideCounts xs = foldr (\x ys -> ys >>= isValid x) (Right nucleotides) xs

isValid :: Char -> M.Map Char Int -> Either String (M.Map Char Int)
isValid nuc map = case M.lookup nuc map of
    Nothing -> Left "invalid DNA-String"
    Just count -> Right $ incNucleotide nuc map

incNucleotide nucleotide map = M.insertWith (+) nucleotide 1 map

    
