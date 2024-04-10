--clase

todoMenor :: (Int, Int) -> (Int, Int) -> Bool  
todoMenor (a, b) (c, d) | a < c && b < d = True
                        | otherwise = False
                    
primero :: (Int, Int, Int) -> Int
primero  (x, y, z) = x

segundo :: (Int, Int, Int) -> Int
segundo  (x, y, z) = y

tercero :: (Int, Int, Int) -> Int
tercero  (x, y, z) = z

posPrimerPar :: (Int, Int, Int) -> Int
posPrimerPar (x, y, z) | mod x 2 == 0 = 0
                       | mod y 2 == 0 = 1
                       | mod z 2 == 0 = 2
                       | otherwise = 4

bisiesto :: Integer -> Bool
bisiesto x | mod x 100 == 0 = mod x 400 == 0
           | otherwise = mod x 4 == 0

distanciaManhattan :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (a, b, c) (d, e, f) = abs (a - d) + abs (b - e) + abs (c - f) 

ultimoDigito :: Integer -> Integer
ultimoDigito x = rem x 10

digitoDecenas :: Integer -> Integer
digitoDecenas x  = mod (div x 10) 10

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
estanRelacionados x y | 

