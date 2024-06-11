-- original
myGcdV1 a b = if remainder == 0
              then b
              else myGcdV1 b remainder
    where remainder = a `mod` b

-- using pattern matching
myGcdV2 a 0 = a
myGcdV2 a b = myGcdV2 b (a `mod` b)