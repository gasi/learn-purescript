module Exercises.Exercise7.PureScript where

import Internal

import Data.Maybe (Maybe(..))
import Exercises.Exercise7.JavaScript as JavaScript

-- TODO: Implement `addXY` using `do` notation.
--
-- NOTE: The `do` notation provides syntactic sugar for `>>=`. The following
-- two are the same:
--
--    mx >>=
--      \x -> f x
--
--    do
--      x <- mx
--      f x
--
addXY :: Maybe Int -> Maybe Int -> Maybe Int
addXY mx my = Nothing -- TODO: Replace this line with your own implementation

main :: Effect Unit
main = quickCheck \mx my ->
  assertEqual (addXY mx my) (JavaScript.addXY mx my) {mx, my}
