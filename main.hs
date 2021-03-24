module Main where
import Text.ParserCombinators.Parsec hiding (spaces)
import System.Environment 

data LispVal = Atom String
             | List [LispVal]
             | DottedList [LispVal] LispVal
             | Number Integer
             | String String
             | Bool Bool


parseString :: Parser LispVal
parseString = do char '"'
                 x <- many (noneOf "\"")
                 char '"'
                 return $ String x

parseExpr :: Parser LispVal
parseExpr =  parseString

spaces :: Parser ()
spaces = skipMany1 space

symbol :: Parser Char
symbol = oneOf "#$%&|*+-/:<=>?@^_~"

readExpr :: String -> String
readExpr input = case parse parseExpr "lisp" input of 
   Left err -> "No match: " ++ show err
   Right _ -> "Yes" 

main :: IO ()
main = do (expr:_) <- getArgs
          putStrLn (readExpr expr )
