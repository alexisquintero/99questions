module Listsc.RemoveAt where

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (xs !! pre , uncurry concatDrop . splitAt pre $ xs)
  where pre = pred n
        concatDrop s1 (_:s2) = s1 ++ s2
