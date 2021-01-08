module Lists.MyLengthSpec where

import Test.Hspec
import Test.QuickCheck
import Lists.MyLength

prop_myLength :: [Char] -> Bool
prop_myLength xs = (show . myLength $ xs) == (show . length $ xs)

spec :: Spec
spec = do
  describe "Lists.MyLast" $ do
    it "example 1" $ do
      (myLength [123, 456, 789]) `shouldBe` 3
    it "example 2" $ do
      (myLength "Hello, world!") `shouldBe` 13
    it "quickCheck" $ do
      quickCheck prop_myLength
