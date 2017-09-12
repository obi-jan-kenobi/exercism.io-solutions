module Raindrops exposing (..)

-- DANGER: went "a little" overboard with my implementation


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
    let
        results =
            List.map (\f -> f number)
                [ hasFactor3
                , hasFactor5
                , hasFactor7
                ]
    in
    if List.all isNothing results then
        toString number
    else
        List.foldr
            (\x ys ->
                case x of
                    Nothing ->
                        ys

                    Just x ->
                        convertToSpeak x ++ ys
            )
            ""
            results


isNothing : Maybe a -> Bool
isNothing maybe =
    case maybe of
        Nothing ->
            True

        Just _ ->
            False


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
