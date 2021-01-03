module Lists.IsPalindrome where

import Lists.MyReverse

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == myReverse xs
