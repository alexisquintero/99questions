module TestCommon
  ( putTestLn
  ) where

putTestLn :: Bool -> IO ()
putTestLn b = putStrLn $ if b then "OK" else "FAIL!"
