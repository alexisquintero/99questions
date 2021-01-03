module ElementAtTest (test) where

import Test.QuickCheck
-- import Test.QuickCheck.Modifiers
import Test.QuickCheck.Arbitrary
import TestCommon
import Lists.ElementAt
import GHC.Natural

-- prop_elementAt :: (Num a) => [Char] -> a -> Bool
-- prop_elementAt [] n = (elementAt [] $ n) == (Nothing :: Maybe Char)
-- prop_elementAt xs n = (elementAt xs n) == (Just . (!! (naturalToInt n)) $ xs)

test :: IO ()
test = do
  putTestLn $ (elementAt [1,2,3] 2) == Just 2
  putTestLn $ (elementAt "haskell" 5) == Just 'e'
  -- quickCheck $ forAll arbitrarySizedNatural prop_elementAt
  putStrLn "Done elementAt"
