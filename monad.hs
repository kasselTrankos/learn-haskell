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
mapToMaybe func Nothing = Nothing
mapToMaybe func (Just string) =
    Just (func string)

greetUser :: Integer -> Maybe String
greetUser record =
    mapToMaybe ("Hello, " ++) (getit record)
getit :: Integer -> Maybe String
getit record =
    (lookup record database)


mapToEither :: ( a -> b)-> Either left a -> Either left b
mapToEither func (Left a)= Left a
mapToEither func (Right b) = Right (func b)
