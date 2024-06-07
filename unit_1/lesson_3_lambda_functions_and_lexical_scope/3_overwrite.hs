-- original
overwriteV1 x = let x = 2
                in
                  let x = 3
                  in
                    let x = 4
                    in x

-- using lambda
overwriteV2 x = (\x -> 
                    (\x -> 
                        (\x -> x) 4
                    ) 3
                ) 2