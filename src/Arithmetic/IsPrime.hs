module Arithmetic.IsPrime where

isPrime :: Int -> Bool
isPrime n
  | n <= 1 = False
  | n <= 3 = True
  | otherwise = not $ any (\x -> n `mod` x == 0) [pre, (pred pre)..2]
      where pre = pred n
