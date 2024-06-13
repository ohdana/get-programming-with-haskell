myTake n myList = myTakeHelper n myList []

myTakeHelper _ [] accumulator = accumulator
myTakeHelper 0 _ accumulator = accumulator
myTakeHelper n (x:xs) accumulator = myTakeHelper (n - 1) xs (accumulator ++ [x])