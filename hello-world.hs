
{-# LANGUAGE TypeApplications #-}
import Data.Time
import Data.Int (Int8)

toString :: Integer -> String
toString int =
   show int ++ " ---- hola"


main = 
    do
        now <- getZonedTime
        let 
            x = 2
            e = [1,24]
        putStrLn ("Hola mundo")
        putStrLn(" 1 +1 ... =  12")
        putStrLn(show(x + x))
        putStrLn(show(e))
        putStrLn(toString(x))
        putStrLn(timeNow now)
        putStrLn(show [3 .. 9])
        putStrLn (show (minBound @Int8))
        

timeNow :: ZonedTime -> String
timeNow now =
    case todHour (localTimeOfDay (zonedTimeToLocalTime now)) < 12 of
    True  ->  "It's before noon"
    False -> "It's after noon"