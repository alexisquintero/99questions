module Listsc.LengthEncodingSpec where

import Test.Hspec
import Listsc.LengthEncoding

spec :: Spec
spec = do
  describe "Listsc.LengthEncoding" $ do
    it "example 1" $ do
      (encodeModified "aaaabccaadeeee") `shouldBe` [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e']
