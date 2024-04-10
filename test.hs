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
