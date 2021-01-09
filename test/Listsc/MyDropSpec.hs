module Listsc.MyDropSpec where

import Test.Hspec
import Listsc.MyDrop

spec :: Spec
spec = do
  describe "Listsc.MyDrop" $ do
    it "example 1" $ do
      (myDrop "abcdefghik" 3) `shouldBe` "abdeghk"
