
import Data.Time

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

timeNow :: ZonedTime -> String
timeNow now =
    case todHour (localTimeOfDay (zonedTimeToLocalTime now)) < 12 of
    True  ->  "It's before noon"
    False -> "It's after noon"