module InfLists where

infList f x = f x : infList f x

infList2 f x = let l = f x : l in l

l = infList (+19) (23::Int)
l2 = infList2 (+19) (23::Int)
