import Data.Char

isPalindrome :: String -> Bool
isPalindrome word =
    word == reverse word

nonEmptyPalindrome :: String -> Maybe Bool
nonEmptyPalindrome word =
    case word of
        "" -> Nothing
        _ -> Just(isPalindrome word)

verbose :: String -> String
verbose word =
    case nonEmptyPalindrome word of
        Nothing -> "no an empty"
        Just False -> "No"
        Just True -> "Si"
        

myMap :: (a -> a) -> [a] -> [a]  
myMap func list =
    case list of
        [] -> []
        ( first : rest) -> func first : myMap func rest

allLowerCase :: String -> String
allLowerCase word = myMap toLower word

myAll :: (a -> Bool) -> [a] -> Bool
myAll _ [] = True
myAll pred (x:xs) = 
    case (pred x) of
        False -> False
        True -> myAll pred xs

rejectNonAlphabetic :: String -> Maybe String
rejectNonAlphabetic string =
    case (myAll isAlpha string) of
        False -> Nothing
        True -> Just string

    

main :: IO()
main =
    do
        word <- getLine
        print(verbose word)