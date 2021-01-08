module Lists.MyButLastSpec where

import Test.Hspec
import Test.QuickCheck
import Test.QuickCheck.Modifiers
import Lists.MyButLast
import qualified Data.List.NonEmpty as NE

prop_myButLast :: Char -> NonEmptyList Char -> Bool
prop_myButLast c val =
  (myButLast . NE.fromList . (c:) . getNonEmpty $ val) ==
  (last . NE.init . NE.fromList . (c:) . getNonEmpty $ val)

spec :: Spec
spec = do
  describe "Lists.MyButLasts" $ do
    it "example 1" $ do
      (myButLast . NE.fromList $ [1,2,3,4]) == 3
    it "example 2" $ do
      (myButLast . NE.fromList $ ['a'..'z']) == 'y'
    it "quickCheck" $ do
      quickCheck prop_myButLast
