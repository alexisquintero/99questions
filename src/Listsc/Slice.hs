module Listsc.Slice where

slice :: [a] -> Int -> Int -> [a]
slice xs s e = drop (pred s) . take e $ xs
