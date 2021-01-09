module Listsc.LengthDecoding where

import qualified Listsc.LengthEncoding as LE

foldLogic :: LE.LenEncode a -> [a] -> [a]
foldLogic (LE.Single x) xs = x:xs
foldLogic (LE.Multiple n x) xs = (take n $ repeat x) ++ xs

decodeModified :: [LE.LenEncode a] -> [a]
decodeModified = foldr foldLogic []
