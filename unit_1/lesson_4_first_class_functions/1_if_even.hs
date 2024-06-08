-- original
ifEvenIncV1 n = if even n
              then n + 1
              else n
ifEvenDoubleV1 n = if even n
                 then n * 2
                 else n
ifEvenSquareV1 n = if even n
                 then n ^ 2
                 else n

-- pass a function as argument
ifEven myFunction x = if even x
                      then myFunction x
                      else x

inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEvenIncV2 n = ifEven inc n
ifEvenDoubleV2 n = ifEven double n
ifEvenSquareV2 n = ifEven square n

-- use lambda
ifEvenIncV3 n = ifEven (\x -> x + 1) n
ifEvenDoubleV3 n = ifEven (\x -> x * 2) n
ifEvenSquareV3 n = ifEven (\x -> x ^ 2) n
ifEvenCubeV3 n = ifEven (\x -> x ^ 3) n