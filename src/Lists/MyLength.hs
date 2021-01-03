module Lists.MyLength where

import GHC.Natural

myLength :: [a] -> Natural
myLength = foldl (\x _ -> succ x) 0

