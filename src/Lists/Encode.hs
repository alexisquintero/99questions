module Lists.Encode where

import Lists.Pack
import Numeric.Natural

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = foldr (\cur@(x:_) acc -> (length cur, x):acc) [] (pack xs)
