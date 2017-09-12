module Bob exposing (..)


type Response
    = Yelling
    | Question
    | Whatever
    | Silence


respondTo : Response -> String
respondTo response =
    case response of
        Yelling ->
            "Whoa, chill out!"

        Question ->
            "Sure."

        Whatever ->
            "Whatever."

        Silence ->
            "Fine. Be that way!"


determinePhrase : String -> Response
determinePhrase phrase =
    if String.trim phrase == "" then
        Silence
    else if (String.toUpper phrase == phrase) && (String.toLower phrase /= phrase) then
        Yelling
    else if String.endsWith "?" phrase then
        Question
    else
        Whatever


hey : String -> String
hey =
    respondTo << determinePhrase
