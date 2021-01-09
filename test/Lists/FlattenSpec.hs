module Lists.FlattenSpec where

import Test.Hspec
import Lists.Flatten

spec :: Spec
spec = do
  let struc1 = (Elem 5)
      struc2 = (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
      struc3 = (List [])
  describe "Lists.Flatten" $ do
    it "example 1" $ do
      (flatten struc1) `shouldBe` [5]
    it "example 2" $ do
      (flatten struc2) `shouldBe` [1,2,3,4,5]
    it "example 3" $ do
      (flatten struc3) `shouldBe` ([] :: [Int])
