module Listsc.DirectLengthEncoding where

import Listsc.LengthEncoding

encodeDirect :: (Eq a) => [a] -> [LenEncode a]
encodeDirect = foldr logic []
  where logic cur acc@((Single x):les) = if x == cur then Multiple 2 cur:les else Single cur:acc
        logic cur acc@((Multiple n x):les) = if x == cur then Multiple (succ n) cur:les else Single cur:acc
        logic cur [] = [Single cur]
