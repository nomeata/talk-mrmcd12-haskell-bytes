infList f x = f x : infList f x

infList2 f x = let l = f x : l in l

l1 = infList (+19) 23
l2 = infList2 (+19) 23
