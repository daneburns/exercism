module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune
            deriving (Eq)


days :: Float -> Float
days seconds = seconds / 86400

ageOn :: Planet -> Float -> Float
ageOn planet seconds
  | planet == Earth = days seconds / 365.25
  | planet == Mercury = ageOn Earth seconds / 0.2408467
  | planet == Venus = ageOn Earth seconds / 0.61519726
  | planet == Mars = ageOn Earth seconds / 1.8808158
  | planet == Jupiter = ageOn Earth seconds / 11.862615 
  | planet == Saturn = ageOn Earth seconds / 29.447498
  | planet == Uranus = ageOn Earth seconds / 84.016846
  | planet == Neptune = ageOn Earth seconds / 164.79132
  | otherwise = error "That ain't no planet"
