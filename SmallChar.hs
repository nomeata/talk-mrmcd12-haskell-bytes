import GHC.HeapView
import System.Mem

main = do
    let hallo = "hallo"
    mapM_ (\x -> putStrLn $ show x ++ ": " ++ show (asBox x)) hallo
    performGC
    mapM_ (\x -> putStrLn $ show x ++ ": " ++ show (asBox x)) hallo
