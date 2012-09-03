import GHC.HeapView
import Text.Printf
import Data.List
import System.Mem
import Utils

main = do
    let hallo = "hallo"
    viewListClosures hallo
    performGC
    viewListClosures hallo
