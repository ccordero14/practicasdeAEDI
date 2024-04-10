{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant ==" #-}
doubleMe x = x + x

f :: Int -> Int
f 1 = 8
f 4 = 131
f 16 = 16

g :: Int -> Int
g 8 = 16
g 16 = 4
g 131 = 1

h :: Int -> Int
h = f . g

k :: Int -> Int
k = g . f

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

ultimoDigito :: Int -> Int
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

