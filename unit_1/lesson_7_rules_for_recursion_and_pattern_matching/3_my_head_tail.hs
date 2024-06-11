myHead (x:_) = x
myHead [] = error "No head for empty list"

myTail (_:xs) = xs
myTail [] = []