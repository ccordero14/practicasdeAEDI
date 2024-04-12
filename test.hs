doubleMe x = x + x


maximo3 :: Int -> Int -> Int -> Int
maximo3 x y z | x > y && x > z = x
              | y > z && y > x = y
              | z > y && z > x = z

sumaDistintos :: Int -> Int -> Int -> Int
sumaDistintos x y z | x /= y && x /= z && y /= z = x + y + z
                    | x == y && x /= z && y /= z = x + z
                    | x /= y && x == z && y /= z = x + y
                    | x /= y && x /= z && y == z = x + y
                    | x == y && x == z && y == z = 0

ultimoDigito :: Integer -> Integer
ultimoDigito x = rem x 10

digitoDecenas :: Integer -> Integer
digitoDecenas x  = mod (div x 10) 10

todoMenor :: [Int] -> [Int] -> Bool
todoMenor [x , y] [z , d] | x < z && y < d = True
                          | otherwise = False

--WE'RE DONEEEEEEEEE FUCK YEAH
-- no tf we weren't

posPrimerPar :: (Int, Int, Int) -> Int
posPrimerPar (x, y, z) | even x = 1
                       | even y = 2
                       | even z = 3
                       | otherwise = 4

bisiesto1 :: Int -> Bool
bisiesto1 x | mod x 100 == 0 = mod x 400 == 0
            | otherwise = mod x 4 == 0

distanciaManhattan :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (x1, y1, z1) (x2, y2, z2) = abs (x1 - x2) + abs (y1 - y2) + abs (z1 - z2)

absoluto :: Float -> Float
absoluto n | n < 0 = -n
           | otherwise = n

sumaUltimosDigitos :: Integer -> Integer -> Integer
sumaUltimosDigitos x  y | ultimoDigito x + digitoDecenas x > ultimoDigito y + digitoDecenas y = 1
                        | ultimoDigito x + digitoDecenas x < ultimoDigito y + digitoDecenas y = -1
                        | otherwise = 0

f4 :: Float -> Float -> Float
f4 x y = (x+y)/2

f5 :: (Float, Float) -> Float
f5 (x, y) = (x+y)/2

--entendi varias cosas yay
f a = (a * 5) 7

