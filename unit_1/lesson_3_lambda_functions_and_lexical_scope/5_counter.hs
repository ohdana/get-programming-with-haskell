-- causes error
counterV1 x = let x = x + 1
              in
                let x = x + 1
                 in
                   x

-- using lambda
counterV2 x = (\x -> x + 1)
                ((\x -> x + 1)
                    ((\x -> x) x))