module Listsa.RndSelectSpec where

import Test.Hspec
import Listsa.RndSelect

spec :: Spec
spec = do
  describe "Listsa.RndSelect" $ do
    it "example 1" $ do
      "dummy" `shouldBe` "dummy"
-- ???
--       res <- rnd_select "abcdefgh" 3
--       res `shouldBe` "eda"
