getRequestUrl host apiKey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

genHostRequestBuilder host = (\apiKey resource id -> getRequestUrl host apiKey resource id)
exampleUrlBuilderV1 = genHostRequestBuilder "http://example.com"
genApiRequestBuilderV1 hostBuilder apiKey = (\resource id -> hostBuilder apiKey resource id)
myExampleUrlBuilderV1 = genApiRequestBuilderV1 exampleUrlBuilderV1 "1337hAsk3ll"

-- take resource as parameter
genApiRequestBuilderV2 hostBuilder apiKey resource = (\id -> hostBuilder apiKey resource id)

-- using partial application
exampleUrlBuilderV2 = getRequestUrl "http://example.com"
myExampleUrlBuilderV2 = exampleUrlBuilderV2 "1337hAsk3ll"

-- a function that only requires the bookId parameter
myExampleUrlBuilderV3 = getRequestUrl "http://example.com" "1337hAsk3ll" "books"
