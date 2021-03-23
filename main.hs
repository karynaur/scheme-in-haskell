module Main where
import System.Environment 

main :: IO ()
main = do 
   args <- getArgs
   let a = (read (args !! 0) :: Int)
   let b = (read (args !! 1) :: Int)
   let c = a + b
   
   putStrLn ("Hello, " ++ show c :: String)
   putStrLn ("Write Something :)")
   line <- getLine
   putStrLn ("Bruh you just typed " ++ line)
