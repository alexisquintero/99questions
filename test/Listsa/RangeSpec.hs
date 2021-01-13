module Listsa.RangeSpec where

import Test.Hspec
import Test.QuickCheck
import Listsa.Range

spec :: Spec
spec = do
  describe "Listsa.Range" $ do
    it "example 1" $ do
      range 4 9 `shouldBe` [4,5,6,7,8,9]
    it "quickCheck" $
      property $ \x -> range x (end x) `shouldBe` ([x..(end x)] :: [Int])
                    where end = (2*) . abs
