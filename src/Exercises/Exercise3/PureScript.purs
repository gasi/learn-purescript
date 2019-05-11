module Exercises.Exercise3.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise3.JavaScript as JavaScript

-- TODO: Implement `addXY` using pattern matching:
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY _ _ = Nothing   -- TODO: Replace this line with your own implementation

main :: Effect Unit
main = quickCheck \x y ->
  assertEqual (JavaScript.addXY x y) (addXY x y) {x, y}
