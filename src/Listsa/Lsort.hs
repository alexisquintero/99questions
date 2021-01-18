module Listsa.Lsort where

import Control.Monad.State
import Data.List

type Tup a = (Int, [a])

sortFn :: (Ord a) => Tup a -> Tup a -> Ordering
sortFn (n, xs) (m, ys)
  | n == m    = compare xs ys
  | otherwise = compare n m

lsort :: (Ord a) => [[a]] -> [[a]]
lsort = map snd . sortBy sortFn . map (\xs -> (length xs, xs))


