-- original
doubleDoubleV1 x = dubs * 2
    where dubs = x * 2

-- using lambda
doubleDoubleV2 x = (\dubs -> dubs * 2) (x * 2)