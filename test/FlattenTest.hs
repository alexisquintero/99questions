module FlattenTest (test) where

import TestCommon
import Lists.Flatten

test :: IO ()
test = do
  let struc1 = (Elem 5)
      struc2 = (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
      struc3 = (List [])
  putTestLn $ (flatten struc1) == [5]
  putTestLn $ (flatten struc2) == [1,2,3,4,5]
  putTestLn $ (flatten struc3) == ([] :: [Int])
  putStrLn "Done flatten"
