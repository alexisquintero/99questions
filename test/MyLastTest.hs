module MyLastTest (test, prop_myLast) where

import Test.QuickCheck
import TestCommon
import Lists.MyLast
import qualified Data.List.NonEmpty as NE

prop_myLast :: NonEmptyList Char -> Bool
prop_myLast val =
  (myLast . NE.fromList . getNonEmpty $ val) == (NE.last . NE.fromList .getNonEmpty $ val)

test :: IO ()
test = do
  putTestLn $ (myLast . NE.fromList $ [1,2,3,4]) == 4
  putTestLn $ (myLast . NE.fromList $ ['x','y','z']) == 'z'
  quickCheck prop_myLast
  putStrLn "Done myLast"
