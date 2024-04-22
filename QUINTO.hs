type Punto2D = (Float, Float)
type Coordenadas = (Float, Float)

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece e (x:xs) | e == x = True
                   | otherwise = pertenece e xs

pertenece1 :: (Eq t) => t -> [t] -> Bool
pertenece1 _ [] = False
pertenece1 e (x:xs) = e == x || pertenece e xs

prodInt :: Punto2D -> Punto2D -> Float
prodInt (a, b) (c, d) = (a*c) + (b*d)


todosMenor :: Punto2D -> Punto2D -> Bool
todosMenor (a, b) (c, d) | a < c && b < d = True
                         | otherwise = False

distanciaPuntos :: Punto2D -> Punto2D -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x1 - x2)^2 +(y1 - y2)^2)

crearPar :: Float -> Float -> Coordenadas
crearPar x y = (x, y)

type Año = Integer
type EsBisiesto = Bool

bisiesto :: Año -> EsBisiesto
bisiesto x | mod x 100 == 0 = mod x 400 == 0
           | otherwise = mod x 4 == 0

longitud :: [t] -> Integer
longitud [] = 0
longitud [x] = 1
longitud (x:xs) = 1 + longitud xs

hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos [] = False
hayRepetidos (x:xs) | pertenece x xs = True
                    | otherwise = hayRepetidos xs

quitar :: (Eq t) => t -> [t] -> [t]
quitar _ [] = []
quitar y (x:xs) | y == x = xs 
                | otherwise = x : quitar y xs 

quitar1 :: (Eq t) => t -> [t] -> [t]
quitar1 _ [] = []
quitar1 y (x:xs) | y == x = quitar1 y xs 
                | otherwise = x : quitar1 y xs 

maximo :: [Integer] -> Integer
maximo [a] = a
maximo (x:y:xs) | x >= y = maximo (x: xs)
                | otherwise = maximo (y:xs)

ordenar :: [Integer] -> [Integer]
ordenar [] = []
ordenar (x:xs) = ordenar (quitar (maximo (x:xs)) (x:xs)) ++ [maximo (x:xs)]