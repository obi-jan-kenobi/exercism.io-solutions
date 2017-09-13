module Triangle exposing (..)


version : Int
version =
    2


type Triangle
    = Equilateral
    | Isosceles
    | Scalene


triangleKind : number -> number -> number -> Result String Triangle
triangleKind a b c =
    if not <| triangleGuard a b c then
        Err "Invalid lengths"
    else if not <| triangleInequality a b c then
        Err "Violates inequality"
    else if isEquilateral a b c then
        Ok Equilateral
    else if isIsosceles a b c then
        Ok Isosceles
    else
        Ok Scalene


isEquilateral : number -> number -> number -> Bool
isEquilateral a b c =
    a == b && b == c


isIsosceles : number -> number -> number -> Bool
isIsosceles a b c =
    a == b || b == c || a == c


triangleInequality a b c =
    a + b > c && b + c > a && a + c > b


triangleGuard a b c =
    a > 0 && b > 0 && c > 0
