module Listsc.RemoveAtSpec where

import Test.Hspec
import Listsc.RemoveAt

spec :: Spec
spec = do
  describe "Listsc.RemoveAt" $ do
    it "example 1" $ do
      (removeAt 2 "abcd") `shouldBe` ('b', "acd")
