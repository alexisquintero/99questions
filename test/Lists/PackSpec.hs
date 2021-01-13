module Lists.PackSpec where

import Test.Hspec
import Lists.Pack

spec :: Spec
spec = do
  describe "Lists.Pack" $ do
    it "example 1" $ do
      pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] `shouldBe` ["aaaa","b","cc","aa","d","eeee"]
