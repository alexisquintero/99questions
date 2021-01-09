module Lists.IsPalindromeSpec where

import Test.Hspec
import Lists.IsPalindrome

spec :: Spec
spec = do
  describe "Lists.IsPalindrome" $ do
    it "example 1" $ do
      not $  isPalindrome [1,2,3]
    it "example 2" $ do
      isPalindrome "madamimadam"
    it "example 3" $ do
      isPalindrome [1,2,4,8,16,8,4,2,1]
