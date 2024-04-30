module Practicasdeparcial where

{--Ejercicio 1
problema relacionesValidas (relaciones: seq⟨String x String⟩) : Bool {
  requiere: {True}
  asegura: {(res = true) <=> relaciones no contiene ni tuplas repetidas1, ni tuplas con ambas componentes iguales}
A los fines de este problema consideraremos que dos tuplas son iguales si el par de elementos que las componen (sin importar el orden) son iguales}-}

iguales :: (String, String) -> [(String, String)] -> Bool
iguales (x,y) [] = True
iguales (x,y) ((a,b):xs) | x == a && y == b = True
                         | x == b && y == a = True
                         | otherwise = iguales (x,y) xs

relacionesValidas :: [(String, String)] -> Bool
relacionesValidas [] = True
relacionesValidas [(x,y)] | x == y = False
                          | otherwise = True
relacionesValidas [(x,y), (a,b)] | x == a && y == b = False
                                 | x == b && y == a = False
                                 | otherwise = True
relacionesValidas ((x,y):(a,b):ys) | iguales (x,y) ((a,b):ys) = False
                                   | otherwise = relacionesValidas ys

 {--ejercicio2
  problema personas (relaciones: seqâŸ¨String x StringâŸ©) : seqâŸ¨StringâŸ© {
  requiere: {relacionesValidas(relaciones)}
  asegura: {res no tiene elementos repetidos}
  asegura: {res tiene exactamente los elementos que figuran en alguna tupla de relaciones, en cualquiera de sus posiciones}-}

{--ejercicio2
  problema personas (relaciones: seqâŸ¨String x StringâŸ©) : seqâŸ¨StringâŸ© {
  requiere: {relacionesValidas(relaciones)}
  asegura: {res no tiene elementos repetidos}
  asegura: {res tiene exactamente los elementos que figuran en alguna tupla de relaciones, en cualquiera de sus posiciones}-}

personas :: [(String, String)] -> [String]
personas [] = []
personas (x:xs) = quitarRepetidos (elementoTupla x ++ personas xs)


elementoTupla :: (String, String) -> [String]
elementoTupla (x,y) = [x,y]

pertenece :: String -> [String] -> Bool
pertenece _ [] = False
pertenece n (x:xs) = n == x || pertenece n xs

quitarRepetidos :: [String] -> [String]
quitarRepetidos [] = []
quitarRepetidos (x:xs) | not (pertenece x xs) = x : quitarRepetidos xs
                       | otherwise = quitarRepetidos xs

{-Ejercicio 3
problema amigosDe (persona: String, relaciones: seq⟨String x String⟩) : seq⟨String⟩ {
  requiere: {relacionesValidas(relaciones)}
  asegura: {res tiene exactamente los elementos que figuran en las tuplas de relaciones en las que una de sus componentes es persona}
}
-}

amigosDe :: String -> [(String, String)] -> [String]
amigosDe n [] = []
amigosDe n ((x,y):xs) | n == y = x : amigosDe n xs
                      | n == x = y : amigosDe n xs
                      | otherwise = []

{--Ejercicio 4
problema personaConMasAmigos (relaciones: seq⟨String x String⟩) : String {
  requiere: {relaciones no vacía}
  requiere: {relacionesValidas(relaciones)}
  asegura: {res es el Strings que aparece más veces en las tuplas de relaciones (o alguno de ellos si hay empate)}
}-}

aparece :: String -> [(String, String)] -> Integer
aparece x ((a,b):xs) | x == a = 1 + aparece x xs
                     | x == b = 1 + aparece x xs 
                     | otherwise = 0

contadorApariciones :: [String] -> [(String, String)] -> [(String, Integer)]
contadorApariciones [] _ = []
contadorApariciones (x:xs) (y:ys) = (x, aparece x (y:ys)) : contadorApariciones xs (y:ys)

quienApareceMasVeces :: [(String, Integer)] -> String
quienApareceMasVeces [(a,x)] = a
quienApareceMasVeces ((a,x):(b,y):xs) | x >= y = quienApareceMasVeces ((a,x):xs)
                                      | otherwise = quienApareceMasVeces ((b,y):xs)

personaConMasAmigos :: [(String, String)] -> String
personaConMasAmigos (x:xs) = quienApareceMasVeces (contadorApariciones (personas (x:xs)) (x:xs))

