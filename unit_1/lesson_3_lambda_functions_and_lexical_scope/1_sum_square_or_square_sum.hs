--original
sumSquareOrSquareSumV1 x y = if sumSquare > squareSum
                             then sumSquare
                             else squareSum
    where sumSquare = x^2 + y^2
          squareSum = (x + y)^2

-- remove where
sumSquareOrSquareSumV2 x y = if (x^2 + y^2) > (x + y)^2
                             then (x^2 + y^2)
                             else (x + y)^2

-- split into two functions
body sumSquare squareSum = if sumSquare > squareSum
                           then sumSquare
                           else squareSum

sumSquareOrSquareSumV3 x y = body (x^2 + y^2) ((x + y)^2)

-- use lambda
sumSquareOrSquareSumV4 x y = (\sumSquare squareSum ->
                               if sumSquare > squareSum
                               then sumSquare
                               else squareSum) (x^2 + y^2) ((x + y)^2)

-- use let
sumSquareOrSquareSumV5 x y = let sumSquare = (x^2 + y^2)
                                 squareSum = ((x + y)^2)
                         in
                            if sumSquare > squareSum
                            then sumSquare
                            else squareSum