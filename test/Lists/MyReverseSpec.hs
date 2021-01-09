module Lists.MyReverseSpec where

import Test.Hspec
import Test.QuickCheck
import Lists.MyReverse

prop_myReverse :: [Char] -> Bool
prop_myReverse xs = (myReverse xs) == (reverse xs)

spec :: Spec
spec = do
  let str = "A man, a plan, a canal, panama!"
      list = [1,2,3,4]
  describe "Lists.MyReverse" $ do
    it "example 1" $ do
      (myReverse str) `shouldBe` (reverse str)
    it "example 2" $ do
      (myReverse list) `shouldBe` (reverse list)
    it "quickCheck" $ do
      quickCheck prop_myReverse
