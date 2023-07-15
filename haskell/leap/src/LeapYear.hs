module LeapYear (isLeapYear) where

year :: Integer
year = 1996

isDivFour :: Integer -> Bool
isDivFour year = mod year 4 == 0

isDivHundred :: Integer -> Bool
isDivHundred year = mod year 100 == 0

isDivFourHundred :: Integer -> Bool
isDivFourHundred year = mod year 400 == 0

isLeapYear :: Integer -> Bool
isLeapYear year =
   if isDivFour year
      then
         if isDivHundred year
            then
               if isDivFourHundred year
                  then True
                  else False
            else True
      else False
