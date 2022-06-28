module Main where

import Test.QuickCheck

data Fool = Fulse | Frue deriving (Eq, Show)

foolGen :: Gen Fool
foolGen = elements [Fulse, Frue]

instance Arbitrary Fool where
  arbitrary = foolGen

main :: IO ()
main = do
  sample foolGen
