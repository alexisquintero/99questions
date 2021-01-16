module Listsa.RndSelect where

import System.Random
import Control.Monad

rndSelect :: [a] -> Int -> IO [a]
rndSelect [] _ = pure []
rndSelect xs n = do
  pos <- replicateM n $ getStdRandom $ randomR (0, pred . length $ xs)
  pure $ flip (!!) <$> pos <*> [xs]
