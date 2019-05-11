module Exercises.Exercise5.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise5.JavaScript as JavaScript

-- Implement `andThen` to do the same as the JavaScript implementation:
andThen :: Maybe Int -> (Int -> Maybe Int) -> Maybe Int
andThen (Just x) next = next x -- TODO: Replace this line with your own implementation
andThen Nothing next = Nothing -- TODO: Replace this line with your own implementation

-- TODO: Implement `addXY` to do the same as the JavaScript implementation using
-- `andThen`
--
-- FYI: Any function with two arguments, e.g. `plus x y`, can be written in
-- infix form using backticks, i.e. these two are the same:
--
--    plus 2 3   = 5
--
--    2 `plus` 3 = 5
--
--
-- Please use `andThen` with infix notation:
--
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY mx my = Nothing -- TODO: Replace this line with your own implementation

main :: Effect Unit
main = quickCheck \mx my ->
  assertEqual (addXY mx my) (JavaScript.addXY mx my) {mx, my}
