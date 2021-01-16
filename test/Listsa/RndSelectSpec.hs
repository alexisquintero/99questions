module Listsa.RndSelectSpec where

import Test.Hspec
import Test.QuickCheck
import Listsa.RndSelect

spec :: Spec
spec = do
  describe "Listsa.RndSelect" $ do
    it "example 1" $ do
      let items = "abcdefgh"
      res <- rndSelect items 3
      length res `shouldBe` 3
      all (`elem` items) res `shouldBe` True
    it "quickCheck" $ do
      property $ \xs n -> do
        let posn = abs n
        res <- rndSelect xs posn :: IO [Char]
        length res `shouldBe` if null xs then 0 else posn
        all (`elem` xs) res `shouldBe` True
