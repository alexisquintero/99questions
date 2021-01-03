module MyButLastTest (test) where

import Test.QuickCheck
import Test.QuickCheck.Modifiers
import TestCommon
import Lists.MyButLast
import qualified Data.List.NonEmpty as NE

prop_myButLast :: Char -> NonEmptyList Char -> Bool
prop_myButLast c val =
  (myButLast . NE.fromList . (c:) . getNonEmpty $ val) ==
  (last . NE.init . NE.fromList . (c:) . getNonEmpty $ val)

test :: IO ()
test = do
  putTestLn $ (myButLast . NE.fromList $ [1,2,3,4]) == 3
  putTestLn $ (myButLast . NE.fromList $ ['a'..'z']) == 'y'
  quickCheck prop_myButLast
  putStrLn "Done myButLast"

