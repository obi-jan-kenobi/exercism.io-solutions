module Raindrops exposing (..)


type RaindropSpeak
    = Pling
    | Plang
    | Plong


convertToSpeak : RaindropSpeak -> String
convertToSpeak raindrop =
    case raindrop of
        Pling ->
            "Pling"

        Plang ->
            "Plang"

        Plong ->
            "Plong"


raindrops : Int -> String
raindrops number =
    "if all isNothing ()"


isNothing : Maybe a -> Bool
isNothing maybe =
    case maybe of
        Nothing ->
            True

        Just _ ->
            False


zipWith : (a -> b -> c) -> List a -> List b -> List c
zipWith =
    zip a b


factors : List (Int -> Maybe RaindropSpeak)
factors =
    [ hasFactor3, hasFactor5, hasFactor7 ]


hasFactor : Int -> Int -> Bool
hasFactor fac num =
    num % fac == 0


hasFactor3 : Int -> Maybe RaindropSpeak
hasFactor3 num =
    if hasFactor 3 num then
        Just Pling
    else
        Nothing


hasFactor5 : Int -> Maybe RaindropSpeak
hasFactor5 num =
    if hasFactor 5 num then
        Just Plang
    else
        Nothing


hasFactor7 : Int -> Maybe RaindropSpeak
hasFactor7 num =
    if hasFactor 7 num then
        Just Plong
    else
        Nothing
