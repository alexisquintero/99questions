module Lists.Pack
  ( pack
  ) where

pack :: (Eq a) => [a] -> [[a]]
pack = foldr foldLogic []
  where foldLogic e [] = [[e]]
        foldLogic e acc@(x:xs) = if head x == e then (e:x):xs else [e]:acc
