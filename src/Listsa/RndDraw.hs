module Listsa.RndDraw where

import Listsa.RndSelect
import Control.Monad
import Data.List

selectN :: (Eq a) => Int -> [a] -> [a] -> IO [a]
selectN 0 _ taken = pure taken
selectN _ [] taken = pure taken
selectN n available taken = do
  [x] <- rndSelect available 1
  let newTaken = x : taken
      newAvailable = delete x available
  selectN (pred n) newAvailable newTaken

diffSelect :: Int -> Int -> IO [Int]
diffSelect n m
  | m < 1 = pure []
  | n > m = diffSelect m m
  | otherwise = selectN n [1..m] []
