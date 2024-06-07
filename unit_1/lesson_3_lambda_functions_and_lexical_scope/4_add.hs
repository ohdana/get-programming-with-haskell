x = 4
-- add1 10 >> 14
add1 y = y + x
-- add2 10 >> 13
add2 y = (\x -> y + x) 3
-- add3 10 >> 3
add3 y = (\y ->
            (\x -> y + x) 1 ) 2