module Listsc.Repli where

repli :: [a] -> Int -> [a]
repli xs n = foldr (\a as -> (take n . repeat $ a) ++ as) [] xs
