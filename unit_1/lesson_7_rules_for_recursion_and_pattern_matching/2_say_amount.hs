-- using case
sayAmountV1 n = case n of
    1 -> "one"
    2 -> "two"
    n -> "a bunch"
    
-- using pattern matching
sayAmountV2 1 = "one"
sayAmountV2 2 = "two"
sayAmountV2 n = "a bunch"