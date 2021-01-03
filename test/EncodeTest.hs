module EncodeTest (test) where

import TestCommon
import Lists.Encode

test :: IO ()
test = do
  putTestLn $ (encode "aaaabccaadeeee") == [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
  putStrLn "Done encode"
