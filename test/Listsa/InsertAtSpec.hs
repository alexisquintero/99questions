module Listsa.InsertAtSpec where

import Test.Hspec
import Listsa.InsertAt

spec :: Spec
spec = do
  describe "Listsa.InsertAt" $ do
    it "example 1" $ do
      insertAt 'X' "abcd" 2 `shouldBe` "aXbcd"
