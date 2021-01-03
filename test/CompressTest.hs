module CompressTest (test) where

import TestCommon
import Lists.Compress

test :: IO  ()
test = do
  putTestLn $ (compress "aaaabccaadeeee") == "abcade"
  putStrLn "Done compress"
