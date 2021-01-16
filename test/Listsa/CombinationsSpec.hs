module Listsa.CombinationsSpec where

import Test.Hspec
import Test.QuickCheck
import Listsa.Combinations

fact :: Int -> Int
fact = product . flip take [1..]

comb :: Int -> Int -> Int
comb n r
  | r > n = 0
  | otherwise = fact n `div` (fact r * fact (n - r))

spec :: Spec
spec = do
  describe "Listsa.Combinations" $ do
    it "example 1" $ do
      length (combinations 3 "abcdef") `shouldBe` comb 6 3
    -- it "quickCheck" $ do
    --   property $ \xs n -> do
    --     let absn = abs n
    --         shortXs = take 10 xs
    --     length (combinations absn shortXs :: [[Char]]) `shouldBe` comb (length shortXs) absn
