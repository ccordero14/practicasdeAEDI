

relacionesValidas :: [(String, String)] -> Bool
relacionesValidas [] = True
relacionesValidas (x:xs) | tuplaIgual x = False
                         | tuplapertenece x xs = False
                         | otherwise = relacionesValidas xs

tuplapertenece :: (String, String) -> [(String, String)] -> Bool
tuplapertenece _ [] = False
tuplapertenece n (x:xs) | n == x = True
                        | otherwise = tuplapertenece n xs

tuplaIgual :: (String, String) -> Bool
tuplaIgual (x,y) | x == y = True
                 | otherwise = False


personas :: [(String, String)] -> [String]
personas [] = []
personas (x:xs) | relacionesValidas (x:xs) = quitarRepetidos (elementoTupla x ++ personas xs)


elementoTupla :: (String, String) -> [String]
elementoTupla (x,y) = [x,y]

pertenece :: String -> [String] -> Bool
pertenece _ [] = False
pertenece n (x:xs) = n == x || pertenece n xs

quitarRepetidos :: [String] -> [String]
quitarRepetidos [] = []
quitarRepetidos (x:xs) | not (pertenece x xs) = x : quitarRepetidos xs
                       | otherwise = quitarRepetidos xs

amigosDe :: String -> [(String, String)] -> [String]
amigosDe _ [] = []
amigosDe n (x:xs) | perteneceTupla n x && not (tuplaIgual x) = quitarn n x : amigosDe n xs
                  | otherwise = amigosDe n xs

perteneceTupla :: String -> (String, String) -> Bool
perteneceTupla n (x,y) = n == x || n == y

quitarn :: String -> (String, String) -> String
quitarn n (x,y) | n == x && n /= y = y
                | otherwise = x

listasintuplas :: [(String, String)] -> [String]
listasintuplas = concatMap elementoTupla

cantApariciones :: String -> [String] -> Int
cantApariciones n [] = 0
cantApariciones n (x:xs) | n == x = 1 + cantApariciones n xs
                         | otherwise = cantApariciones n xs