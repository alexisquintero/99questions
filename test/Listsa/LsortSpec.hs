module Listsa.LsortSpec where

import Test.Hspec
import Listsa.Lsort

spec :: Spec
spec = do
  describe "Listsa.Lsort" $ do
    it "example 1" $ do
      lsort ["abc","de","fgh","de","ijkl","mn","o"] `shouldBe` ["o","de","de","mn","abc","fgh","ijkl"]
