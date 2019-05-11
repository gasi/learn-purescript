module Exercises.Exercise1.PureScript where

import Internal
import Exercises.Exercise1.JavaScript as JavaScript

-- Imports for exercise
import Data.Maybe (Maybe(..))


-- TODO: Implement `add2` to do the same as the JavaScript implementation
-- in `JavaScript.js` file:
--
-- Reminder:
--
--    data Maybe a  -- `Maybe`: Name of type
--      = Nothing   -- `Nothing`: Constructor for when we don’t have a value
--      | Just a    -- `Just`: Constructor for when we do have a value.
--                     The `a` in `Just a` refers to the `a` in `Maybe a`.
--                     It stands for a type, e.g., `Int`, `String`, etc.
--                     This will let you describe different kinds of `Maybe`
--                     without having to write new code, e.g. `Maybe Int`,
--                     `Maybe String`, etc.
--
add2 :: Maybe Int -> Maybe Int
add2 _ = Nothing -- TODO: Replace this line with your own implementation.


main :: Effect Unit
main = quickCheck \n ->
  assertEqual (add2 n) (JavaScript.add2 n) n
