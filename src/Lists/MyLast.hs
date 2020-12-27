module MyLast
( myLast
) where

import Data.List.NonEmpty

myLast :: NonEmpty a -> a
myLast = foldl1 (\_ x -> x)
