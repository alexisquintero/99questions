module Lists.CompressSpec where

import Test.Hspec
import Lists.Compress

spec :: Spec
spec = do
  describe "Lists.Compress" $ do
    it "example 1" $ do
      compress "aaaabccaadeeee" `shouldBe` "abcade"
