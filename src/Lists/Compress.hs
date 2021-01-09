module Lists.Compress where

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress xs = foldr foldLogic [] xs
  where foldLogic cur [] = [cur]
        foldLogic cur acc@(x:_) = if x == cur then acc else cur:acc
