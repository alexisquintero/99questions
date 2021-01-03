module Lists.MyReverse
  ( myReverse
  ) where

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []
