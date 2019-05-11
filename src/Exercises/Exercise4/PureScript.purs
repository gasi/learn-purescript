module Exercises.Exercise4.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise4.JavaScript as JavaScript

-- TODO: Implement `addXY` using `case … of` expressions:
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY mx my = Nothing -- TODO: Replace this line with your own implementation

main :: Effect Unit
main = quickCheck \x y ->
  assertEqual (JavaScript.addXY x y) (addXY x y) {x, y}
