module Listsc.Split where

split :: [a] -> Int -> ([a], [a])
split = flip splitAt  --(take n xs, drop n xs)
