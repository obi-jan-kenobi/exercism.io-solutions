module RunLength (decode, encode) where

decode :: String -> String
decode encodedText = error "You need to implement this function."

encode :: String -> String
encode text =

idk :: String -> [(Int, Char)]
idk text = foldr (\x ys -> if (_, x) `elem` ys then) [] text
