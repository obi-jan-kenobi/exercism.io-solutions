module School (School, add, empty, grade, sorted) where

import Data.List (sort, lookup, sortOn)

data School = School { pupils :: [(Grade, Name)]}

type Grade = Int
type Name = String

add :: Int -> String -> School -> School
add gradeNum student school = School $ [(gradeNum, student)] ++ (pupils school)

empty :: School
empty = School []

grade :: Int -> School -> [String]
grade gradeNum school = sort $ fmap snd $ filter (\x -> gradeNum == fst x) $ pupils school

accum :: School -> [(Int, [String])]
accum school = foldr (\(g, n) s -> case lookup g s of
                                    Just names -> s
                                    Nothing -> ((g, (grade g school)): s)) [] $ pupils school

sorted :: School -> [(Int, [String])]
sorted = sortOn (\(x, _) -> x) . map (\(i, x) -> (i, sort x)) . accum 
