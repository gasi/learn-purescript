module Exercises.Exercise6.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise6.JavaScript as JavaScript

-- TODO: Implement `addXY` to do the same as the JavaScript implementation using
-- `bind` operator, i.e. `>>=`:
--
-- NOTE: The `bind` function has this type signature:
--
--    bind :: Maybe Int -> (Int -> Maybe Int) -> Maybe Int
--
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY mx my = Nothing -- TODO: Replace this line with your own implementation

main :: Effect Unit
main = quickCheck \mx my ->
  assertEqual (addXY mx my) (JavaScript.addXY mx my) {mx, my}
