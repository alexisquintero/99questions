module Listsa.RndPermuSpec where

import Test.Hspec
import Test.QuickCheck
import Listsa.RndPermu
import Data.List

spec :: Spec
spec = do
  describe "Listsa.RndPermu" $ do
    it "example 1" $ do
      let test = "abcdef"
      res <- rndPermu "abcdef"
      length res `shouldBe` length test
      all (`elem` test) res `shouldBe` True
    it "quickCheck" $ do
      property $ \xs -> do
        let noRepeat = nub xs
        res <- rndPermu noRepeat :: IO [Char]
        length (nub res) `shouldBe` length noRepeat
        all (`elem` noRepeat) res `shouldBe` True
