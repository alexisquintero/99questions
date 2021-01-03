module Lists.MyButLast where

import Lists.MyLast
import qualified Data.List.NonEmpty as NE

myButLast :: NE.NonEmpty a -> a
myButLast = myLast . NE.fromList . NE.init
