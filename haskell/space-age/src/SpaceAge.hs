module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn Earth = secondsToYears
ageOn Mercury = (/ 0.2408467) . secondsToYears
ageOn Venus = (/ 0.61519726) . secondsToYears
ageOn Mars = (/ 1.8808158) . secondsToYears
ageOn Jupiter = (/ 11.862615) . secondsToYears
ageOn Saturn = (/ 29.447498) . secondsToYears
ageOn Uranus = (/ 84.016846) . secondsToYears
ageOn Neptune = (/ 164.79132) . secondsToYears

secondsToYears :: Float -> Float
secondsToYears = (/60.0) . (/60.0) . (/24.0) . (/365.25)
