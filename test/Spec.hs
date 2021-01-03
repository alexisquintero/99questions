import qualified MyLastTest as ML
import qualified MyButLastTest as MBL
import qualified ElementAtTest as EA
import qualified MyLengthTest as MLe
import qualified MyReverseTest as MR
import qualified IsPalindromeTest as IP
import qualified FlattenTest as F
import qualified CompressTest as C
import qualified PackTest as P
import qualified EncodeTest as E

main :: IO ()
main = do
  putStrLn "Tests"
  ML.test
  EA.test -- TODO: prop test
  MLe.test
  MR.test
  IP.test
  F.test
  C.test
  P.test
  E.test
