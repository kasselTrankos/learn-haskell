import Data.Foldable

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
mapToMaybe function Nothing = Nothing
mapToMaybe function (Just string) =
    Just (function string)

greetUser :: Integer -> Maybe String
greetUser record =
    mapToMaybe ("Hello, " ++) (getit record)
getit :: Integer -> Maybe String
getit record =
    (lookup record database)