module Lists.ElementAtSpec where

import Test.Hspec
import Lists.ElementAt
import GHC.Natural

spec :: Spec
spec = do
  describe "Lists.ElementAt" $ do
    it "example 1" $ do
      elementAt [1,2,3] 2 `shouldBe` Just 2
    it "example 2" $ do
      elementAt "haskell" 5 `shouldBe` Just 'e'
