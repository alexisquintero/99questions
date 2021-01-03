module IsPalindromeTest (test) where

import TestCommon
import Lists.IsPalindrome

test :: IO ()
test = do
  putTestLn . not $  isPalindrome [1,2,3]
  putTestLn $ isPalindrome "madamimadam"
  putTestLn $ isPalindrome [1,2,4,8,16,8,4,2,1]
  putStrLn "Done isPalindrome"
