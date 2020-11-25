import Data.Foldable
import Data.Text

example1 :: Maybe String
example1 = Nothing

example2 :: Maybe String
example2 = Just "vera"

example3 :: Maybe [String]
example3 = Just ["vera"]

example4 :: Maybe (Maybe String)
example4 = Just (Just "veat")


database :: [(Integer, String)]
database = [(1, "juan"), (2, "amuel")]

mapToMaybe :: (String -> String) ->
              (Maybe String -> Maybe String)
mapToMaybe f Nothing = Nothing
mapToMaybe f (Just string) =
    Just (f string)

greetUser :: Integer -> Maybe String
greetUser record =
    fmap ("Hello, " ++) (getit record)
getit :: Integer -> Maybe String
getit record =
    (lookup record database)


mapToEither :: ( a -> b) -> Either left a -> Either left b
mapToEither f (Left a)= Left a
mapToEither f (Right b) = Right (f b)

tono :: String -> Either String String
tono word =
    case word of
        "" -> Left "nada"
        _ -> Right word

bolo :: String -> IO Text
bolo word =
    (fmap pack getLine)
