module MyButLast where

import MyLast
import qualified Data.List.NonEmpty as NE

myButLast :: NE.NonEmpty a -> a
myButLast = myLast . NE.fromList . NE.init
