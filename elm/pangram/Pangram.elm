module Pangram exposing (..)


isPangram : String -> Bool
isPangram s =
    let
        xs =
            String.toList <| String.toLower s
    in
    List.all (\x -> List.member x xs) alphabet


alphabet : List Char
alphabet =
    [ 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' ]
