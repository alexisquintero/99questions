module Listsc.LengthEncoding where

import Lists.Pack

data LenEncode a = Multiple Int a | Single a deriving (Show, Eq)

foldLogic :: [a] -> [LenEncode a] -> [LenEncode a]
foldLogic cur@(x:_) acc = (if len == 1 then Single x else Multiple len x) : acc
  where len = length cur

encodeModified :: (Eq a) => [a] -> [LenEncode a]
encodeModified xs = foldr foldLogic [] (pack xs)
