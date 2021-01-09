module Listsc.Dupli where

dupli :: [a] -> [a]
dupli = foldr (\x xs -> x:x:xs) []
