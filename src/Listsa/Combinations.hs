module Listsa.Combinations where

import Control.Monad
import qualified Data.Set as Set

combinations :: (Ord a) => Int -> [a] -> [[a]]
combinations n xs = Set.toList <$> (Set.toList . Set.fromList . filter ((==n) . length) $ Set.fromList <$> replicateM n xs)
