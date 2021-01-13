module Listsc.DupliSpec where

import Test.Hspec
import Test.QuickCheck
import Listsc.Dupli

spec :: Spec
spec = do
  describe "Listsc.Dupli" $ do
    it "example 1" $ do
      dupli [1,2,3] `shouldBe` [1,1,2,2,3,3]
    it "quickCheck" $
      property $ \x y z -> dupli [x,y,z] `shouldBe` ([x,x,y,y,z,z] :: [Char])


