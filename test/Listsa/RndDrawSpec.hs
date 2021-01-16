module Listsa.RndDrawSpec where

import Test.Hspec
import Test.QuickCheck
import Listsa.RndDraw
import Data.List

spec :: Spec
spec = do
  describe "Listsa.RndDraw" $ do
    it "example 1" $ do
      res <- diffSelect 6 49
      length res `shouldBe` 6
      all (`elem` [1..49]) res `shouldBe` True
    it "quickCheck" $ do
      property $ \n m -> do
        let posn = abs n
            posm = abs m
            resLen n m
              | n > m     = m
              | m == 0    = 0
              | otherwise = n
        res <- diffSelect posn posm
        length (nub res) `shouldBe` resLen posn posm
        all (`elem` [1..posm]) res `shouldBe` True
