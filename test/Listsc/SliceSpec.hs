module Listsc.SliceSpec where

import Test.Hspec
import Listsc.Slice

spec :: Spec
spec = do
  describe "Listsc.Slice" $ do
    it "example 1" $ do
      (slice "abcdefghik" 3 7) `shouldBe` "cdefg"
