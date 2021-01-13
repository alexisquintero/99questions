module Listsa.Range where

range :: Int -> Int -> [Int]
range s e
  | s == e = [e]
  | otherwise = s : range (succ s) e
