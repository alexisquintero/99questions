module Lists.ElementAtSpec where

import Test.Hspec
import Test.QuickCheck
-- import Test.QuickCheck.Modifiers
import Test.QuickCheck.Arbitrary
import Lists.ElementAt
import GHC.Natural

-- prop_elementAt :: (Num a) => [Char] -> a -> Bool
-- prop_elementAt [] n = (elementAt [] $ n) == (Nothing :: Maybe Char)
-- prop_elementAt xs n = (elementAt xs n) == (Just . (!! (naturalToInt n)) $ xs)

spec :: Spec
spec = do
  describe "Lists.ElementAt" $ do
    it "example 1" $ do
      (elementAt [1,2,3] 2) `shouldBe` Just 2
    it "example 2" $ do
      (elementAt "haskell" 5) `shouldBe` Just 'e'
  -- quickCheck $ forAll arbitrarySizedNatural prop_elementAt
