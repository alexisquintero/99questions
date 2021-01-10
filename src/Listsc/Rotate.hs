module Listsc.Rotate where

import Data.Tuple

rotate :: [a] -> Int -> [a]
rotate xs n = uncurry (++) . swap . splitAt (mod n (length xs)) $ xs
