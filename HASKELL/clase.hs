--clase

todoMenor :: (Integer, Integer) -> (Integer, Integer) -> Bool
todoMenor (a, b) (c, d) | a < c && b < d = True
                        | otherwise = False

primero :: (Integer, Integer, Integer) -> Integer
primero  (x, y, z) = x

segundo :: (Integer, Integer, Integer) -> Integer
segundo  (x, y, z) = y

tercero :: (Integer, Integer, Integer) -> Integer
tercero  (x, y, z) = z

posPrimerPar :: (Integer, Integer, Integer) -> Integer
posPrimerPar (x, y, z) | even x = 0
                       | even y = 1
                       | even z = 2
                       | otherwise = 4

bisiesto :: Integer -> Bool
bisiesto x | mod x 100 == 0 = mod x 400 == 0
           | otherwise = mod x 4 == 0

distanciaManhattan :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (a, b, c) (d, e, f) = abs (a - d) + abs (b - e) + abs (c - f)

ultimoDigito :: Integer -> Integer
ultimoDigito x = mod (absoluto x) 10

digitoDecenas :: Integer -> Integer
digitoDecenas x  =  mod (div (absoluto x) 10) 10

comparar :: Integer -> Integer -> Integer
comparar x y | (ultimoDigito x - digitoDecenas x) < (ultimoDigito y - digitoDecenas y) = 1
            | (ultimoDigito x - digitoDecenas x) > (ultimoDigito y - digitoDecenas y) = -1
            | (ultimoDigito x - digitoDecenas x) == (ultimoDigito y - digitoDecenas y) = 0

f4 :: Float -> Float -> Float
f4 x y = (x+y)/2

f5 :: (Float, Float) -> Float
f5 (x, y) = (x+y)/2

absoluto :: Integer -> Integer
absoluto x | x < 0 = -x
           | otherwise = x

maximoAbsoluto :: Integer -> Integer -> Integer
maximoAbsoluto x y | absoluto x > absoluto y = absoluto x
                   | otherwise = absoluto y

algunoes0 :: Float -> Float -> Bool
algunoes0 x y | x == 0 && y /= 0 = True
              | x /= 0 && y == 0 = True
              | x == 0 && y == 0 = True
              | otherwise = False

algunoes01 :: Float -> Float -> Bool
algunoes01 x y | x == 0 = True
              | y == 0 = True
              | otherwise = False

ambosson0 :: Float -> Float -> Bool
ambosson0 x y | x == 0 && y == 0 = True
              | otherwise = False

mismoIntervalo :: Float -> Float -> Bool
mismoIntervalo x y | x <= 3 && y <= 3 = True
                   | x > 3 && x <=7 && y > 3 && y <= 7 = True
                   | x > 7 && y > 7 = True
                   | otherwise = False

esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe x y | mod x y == 0 = True
                 | otherwise = False

estanRelacionados :: Integer ->Integer ->Bool
estanRelacionados x y | mod x y == 0 = True
                      | otherwise = False

prodInt :: (Integer, Integer)-> (Integer, Integer) -> Integer
prodInt (a, b) (c, d) = (a * c) + (b * d)

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x1 - x2)^2 +(y1 - y2)^2)

sumaTerna :: (Integer, Integer, Integer) -> Integer
sumaTerna (x, y, z) = x + y + z

crearPar :: t -> t -> (t, t)
crearPar a b = (a, b)

invertir :: (t, t) -> (t, t)
invertir (a, b) = (b, a)

sumarSoloMultiplos :: (Integer, Integer, Integer) -> Integer -> Integer
sumarSoloMultiplos (a, b, c) d | mod a d == 0 && mod b d == 0 && mod c d == 0 = a + b + c + d
                               | mod a d == 0 && mod b d == 0 = a + b + d
                               | mod a d == 0 && mod c d == 0 = a + c + d
                               | mod b d == 0 && mod c d == 0 = b + c + d
                               | mod a d == 0 = a + d
                               | mod b d == 0 = b + d
                               | mod c d == 0 = c + d


f :: Integer -> Integer
f x | x <= 7 = x ^ 2
    | x > 7 = (x * 3) + 1


todosMenores :: (Integer, Integer, Integer) -> Bool
todosMenores (x, y, z) | f x < g x && f y < g y && f z < g z = True
                       | otherwise = False


g :: Integer -> Integer
g x | even x = div x 2
    | otherwise = (x * 3) + 1
