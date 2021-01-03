module MyLengthTest (test) where

import Test.QuickCheck
import TestCommon
import Lists.MyLength

prop_myLength :: [Char] -> Bool
prop_myLength xs = (show . myLength $ xs) == (show . length $ xs)

test :: IO ()
test = do
  putTestLn $ (myLength [123, 456, 789]) == 3
  putTestLn $ (myLength "Hello, world!") == 13
  quickCheck prop_myLength
  putStrLn "Done myLength"
