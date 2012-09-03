import System.Environment
import GHC.HeapView
import Utils

main = do
    let f = map
    viewClosure f
    let g toB = toB || not toB
    viewClosure g
    a <- getArgs
    let h = (++ a)
    print (asBox a)
    viewClosure h
