module Exercises.Exercise2.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise2.JavaScript as JavaScript


add2 :: Int -> Int
add2 number = number + 2

-- TODO: Implement `maybeAdd2` to do the same as the JavaScript implementation
-- using `add2` and `map` function.
--
-- NOTE: The `map` function has the following type signature:
--
--    map :: (Int -> Int) -> Maybe Int -> Maybe Int
--
maybeAdd2 :: Maybe Int -> Maybe Int
maybeAdd2 _ = Nothing  -- TODO: Replace this line with your own implementation

main :: Effect Unit
main = quickCheck \n ->
  assertEqual (maybeAdd2 n) (JavaScript.add2 n) n
