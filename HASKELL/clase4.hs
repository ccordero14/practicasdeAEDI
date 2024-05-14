--guia4 c

fibonacci :: Integer -> Integer
fibonacci x | x == 0 = 0
            | x == 1 = 1
            | otherwise = fibonacci (x - 1) + fibonacci (x - 2)

parteEntera :: Float -> Integer
parteEntera x = truncate x

esDivisible :: Integer -> Integer -> Bool
esDivisible x y | x - y == 0 = True
                | x - y < 0  = False
                |otherwise = esDivisible(x - y) y 

sumaImpares :: Integer -> Integer
sumaImpares x | x == 0 = 0
              | x == 1 = 1
              | otherwise = sumaImpares (x-1) + (x * 2) - 1

medioFact :: Integer -> Integer
medioFact x | x == 0 = 1
            | x == 1 = 1
            | x == 2 = 2
            | otherwise = x * medioFact (x - 2)

sumaDigitos :: Integer -> Integer
sumaDigitos x | x < 10 = x
              | otherwise = mod x 10 + sumaDigitos (div x 10)

todosDigitosIguales :: Integer -> Bool
todosDigitosIguales x | x < 10 = True 
                      | ultimoDigito x == ultimoDigito (sacarUnidades x) = True
                      | otherwise = False

ultimoDigito :: Integer -> Integer
ultimoDigito x = mod (absoluto x) 10

sacarUnidades :: Integer -> Integer
sacarUnidades x  = div (absoluto x) 10

absoluto :: Integer -> Integer
absoluto x | x < 0 = -x
           | otherwise = x

