module Main where
import System.Environment 

main :: IO ()
main = do args <- getArgs
          print ((read $ args!!0) + (read $ args!!1))
   
          putStrLn ("Write Something :)")
          line <- getLine
          putStrLn ("Bruh you just typed " ++ line)
