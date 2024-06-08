import Data.List
names = [("Ian", "Curtis"),
         ("Bernard", "Sumner"),
         ("Peter", "Hook"),
         ("Stephen", "Morris"),
         ("Alex", "Morris")]

-- original
compareLastNamesV1 name1 name2 = if lastName1 > lastName2
                                 then GT
                                 else if lastName1 < lastName2
                                      then LT
                                 else EQ
    where lastName1 = snd name1
          lastName2 = snd name2

-- compare first names if last names are identical
compareLastNamesV2 name1 name2 = if lastName1 > lastName2
                                 then GT
                                 else if lastName1 < lastName2
                                      then LT
                                 else compareFirstNames name1 name2
    where lastName1 = snd name1
          lastName2 = snd name2

compareFirstNames name1 name2 = if firstName1 > firstName2
                                then GT
                                else if firstName1 < firstName2
                                     then LT
                                else EQ
    where firstName1 = fst name1
          firstName2 = fst name2

-- using compare
compareLastNamesV3 :: (Ord a, Ord b) => (a, b) -> (a, b) -> Ordering
compareLastNamesV3 name1 name2 = if lastNameComparisonResult == EQ
                                 then compare (fst name1) (fst name2)
                                 else lastNameComparisonResult
     where lastNameComparisonResult = compare (snd name1) (snd name2)