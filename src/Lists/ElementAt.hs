module Lists.ElementAt where

import GHC.Natural

elementAt :: [a] -> Natural -> Maybe a
elementAt _ 0 = Nothing
elementAt xs n
  | naturalToInt n >= length xs = Nothing
  | otherwise                   = pure . fst . last $ zip xs [1..n]
