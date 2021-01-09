module Listsc.Repli where

repli :: [a] -> Int -> [a]
repli xs n = foldr (\a as -> replicate n a ++ as) [] xs
