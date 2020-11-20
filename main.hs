isPalindrome :: String -> Bool

isPalindrome word =
    word == reverse word

main :: IO()
main =
    do
        word <- getLine
        print(isPalindrome word)