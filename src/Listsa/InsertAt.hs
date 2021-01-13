module Listsa.InsertAt where

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs n = (\(xs, ys) -> xs ++ [x] ++ ys) . splitAt (pred n) $ xs
