module Listsc.RepliSpec where

import Test.Hspec
import Test.QuickCheck
import Listsc.Repli

spec :: Spec
spec = do
  describe "Listsc.Repli" $ do
    it "example 1" $ do
      repli "abc" 3 `shouldBe` "aaabbbccc"
    it "quickCheck" $
      property $ \x y z w -> repli [x,y,z] w `shouldBe` (replicate w x ++ replicate w y ++ replicate w z :: [Char])
