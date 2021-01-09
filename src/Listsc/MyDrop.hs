module Listsc.MyDrop where

import Control.Monad.State

myDrop :: [a] -> Int -> [a]
myDrop xs n = concat . fst . flip runState (n, 1) $ mapM (\a ->
  do
    (dropN, idx) <- get
    if dropN == idx then
      do
        put (dropN, 1)
        pure []
    else
      do
        put (dropN, succ idx)
        pure [a]
    ) xs
