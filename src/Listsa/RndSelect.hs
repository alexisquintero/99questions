module Listsa.RndSelect where

import System.Random
import Control.Monad

rnd_select :: [a] -> Int -> IO [a]
rnd_select xs n = do
  pos <- replicateM n $ getStdRandom $ randomR (0, pred . length $ xs)
  pure $ map (flip (!!)) pos <*> [xs]
