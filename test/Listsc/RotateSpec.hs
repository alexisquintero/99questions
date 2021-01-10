module Listsc.RotateSpec where

import Test.Hspec
import Listsc.Rotate

spec :: Spec
spec = do
  describe "Listsc.Rotate" $ do
    it "example 1" $ do
      (rotate "abcdefgh" 3) `shouldBe` "defghabc"
    it "example 2" $ do
      (rotate "abcdefgh" (-2)) `shouldBe` "ghabcdef"
