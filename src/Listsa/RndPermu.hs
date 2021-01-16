module Listsa.RndPermu where

import Listsa.RndDraw

rndPermu :: (Eq a) => [a] -> IO [a]
rndPermu xs = selectN (length xs) xs []
