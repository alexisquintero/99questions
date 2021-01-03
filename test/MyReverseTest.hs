module MyReverseTest (test) where

import Test.QuickCheck
import TestCommon
import Lists.MyReverse

prop_myReverse :: [Char] -> Bool
prop_myReverse xs = (myReverse xs) == (reverse xs)

test :: IO ()
test = do
  let str = "A man, a plan, a canal, panama!"
      list = [1,2,3,4]
  putTestLn $ (myReverse str) == (reverse str)
  putTestLn $ (myReverse list) == (reverse list)
  quickCheck prop_myReverse
  putStrLn "Done myReverse"
