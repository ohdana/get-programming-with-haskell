-- original
ifEven f x = if even x
             then f x
             else x
genIfEven f = (\x -> ifEven f x)
genIfXEven x = (\f -> ifEven f x)

-- partial application
ifEvenInc = ifEven (\x -> x + 1)
ifEvenDouble = ifEven (\x -> x * 2)
ifEvenSquare = ifEven (\x -> x ^ 2)