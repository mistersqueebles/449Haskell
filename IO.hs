import Data.List
import System.IO

-- start of the function
readFromFile = do

    -- opens a file named insertFileName in read only mode
    -- insertFileName can be changed to whatever we need
    -- fileOpened is the name of the opened file
    fileOpened <- openFile "insertFileName.txt" ReadMode
    -- saves the whole file into contents using hGetContents which stores the whole file
    contents <- hGetContents fileOpened
    -- this just prints the contents to the terminal/screen
    putStr $ contents 
    putStr "\n"
    -- closes the file
    hClose fileOpened