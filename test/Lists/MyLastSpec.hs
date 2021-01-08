module Lists.MyLastSpec where

import Test.Hspec
import Test.QuickCheck
import Lists.MyLast
import qualified Data.List.NonEmpty as NE

prop_myLast :: NonEmptyList Char -> Bool
prop_myLast val =
  (myLast . NE.fromList . getNonEmpty $ val) == (NE.last . NE.fromList .getNonEmpty $ val)

spec :: Spec
spec = do
  describe "Lists.MyLast" $ do
    it "example 1" $ do
      (myLast . NE.fromList $ [1,2,3,4]) `shouldBe` 4
    it "example 2" $ do
      (myLast . NE.fromList $ ['x','y','z']) `shouldBe` 'z'
    it "quickCheck" $ do
      quickCheck prop_myLast
