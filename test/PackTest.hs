module PackTest (test) where

import TestCommon
import Lists.Pack

test :: IO ()
test = do
  putTestLn $ (pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']) == ["aaaa","b","cc","aa","d","eeee"]
  putStrLn "Done pack"

