module Listsc.DirectLengthEncodingSpec where

import Test.Hspec
import Test.QuickCheck
import Listsc.DirectLengthEncoding
import Listsc.LengthEncoding
import Listsc.LengthDecoding

spec :: Spec
spec = do
  describe "Listsc.DirectLengthEncoding" $ do
    it "example 1" $ do
      encodeDirect "aaaabccaadeeee" `shouldBe` [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e']
    it "quickCheck" $
      property $ \x -> (decodeModified . encodeDirect $ x) `shouldBe` (x :: [Char])
