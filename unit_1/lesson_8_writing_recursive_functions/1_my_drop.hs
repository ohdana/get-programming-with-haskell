
myDrop _ [] = []
myDrop 0 myList = myList
myDrop n (x:xs) = myDrop (n - 1) xs