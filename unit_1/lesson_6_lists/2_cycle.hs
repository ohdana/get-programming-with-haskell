ones n = take n (cycle [1])

assignToGroups n myList = zip groups myList
    where groups = cycle [1 .. n]

myRepeat n = cycle [n]

subseq start end myList = take (end - start) listTail
    where listTail = drop start myList

inFirstHalf element myList = element `elem` firstHalf
    where middleIndex = (length myList) `div` 2
          firstHalf = take middleIndex myList