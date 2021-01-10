module Listsc.SplitSpec where

import Test.Hspec
import Listsc.Split

spec :: Spec
spec = do
  describe "Listsc.Split" $ do
    it "example 1" $ do
      (split "abcdefghik" 3) `shouldBe` ("abc", "defghik")
