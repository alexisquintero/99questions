module Listsc.LengthDecodingSpec where

import Test.Hspec
import Test.QuickCheck
import Listsc.LengthDecoding
import Listsc.LengthEncoding

spec :: Spec
spec = do
  describe "Listsc.LengthDecoding" $ do
    it "example 1" $ do
      (decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e']) `shouldBe` "aaaabccaadeeee"
    it "quickCheck" $
      property $ \x -> (decodeModified . encodeModified $ x) `shouldBe` (x :: [Char])
