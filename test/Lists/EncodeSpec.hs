module Lists.EncodeSpec where

import Test.Hspec
import Lists.Encode

spec :: Spec
spec = do
  describe "Lists.Encode" $ do
    it "example 1" $ do
      (encode "aaaabccaadeeee") `shouldBe` [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
