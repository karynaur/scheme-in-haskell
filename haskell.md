## Hello World Program

We begin my writing
```
module Main where
import System.Environment
```

Every program begins with a line creating the Main module that imports the System module and exports the 'main' action

```
main :: IO ()
```

IO is an instance of the Monad class
# | Monad Class
|-IO type - inherited by main!
|-Other types


String to Int
```
read (args !! 1) :: Int
```

Int to String
```
show a
```



