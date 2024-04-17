cantDigitos :: Integer -> Integer
cantDigitos x | x > 10 = 1 + cantDigitos (div x 10)
              | otherwise = 1 

digitoUnidades:: Integer -> Integer
digitoUnidades x = mod x 10

sacarUnidades :: Integer -> Integer
sacarUnidades x = div x 10

iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito x y | y == cantDigitos x = digitoUnidades x
                 | otherwise = iesimoDigito (sacarUnidades x) y

sumaPotenciasDe :: Integer -> Integer -> Integer
sumaPotenciasDe x 1 = x
sumaPotenciasDe x y = x ^ y + sumaPotenciasDe x (y-1)

dobleSumadePotencias :: Integer -> Integer -> Integer
dobleSumadePotencias x y | x == 1 = sumaPotenciasDe 1 y
                         | x > 1 = dobleSumadePotencias (x -1) y + sumaPotenciasDe x y

menorDivisorHasta :: Integer -> Integer -> Integer
menorDivisorHasta x y | (mod x y == 0) = y
                      | otherwise = menorDivisorHasta x (y+1)

menorDivisor :: Integer -> Integer
menorDivisor x | x == 1 = 1
               | otherwise = menorDivisorHasta x 2

esCapicua :: Integer -> Bool
esCapicua x | (iesimoDigito x 1) == digitoUnidades x = True
            | otherwise = False

esPrimo :: Integer -> Bool
esPrimo x = menorDivisor x == x 

nEsimoPrimo :: Integer -> Integer
nEsimoPrimo x | 

esSumaIninicialDePrimos :: Integer -> Bool
esSumaIninicialDePrimos x = esSumaIninicialDePrimerosKPrimos 1 n

esSumaIninicialDePrimerosKPrimos :: Integer -> Integer -> Bool
esSumaIninicialDePrimerosKPrimos k n | sumaKPrimos k == n = True
                                     | sumaKPrimos k > n = False
                                     | sumaKPrimos k < n =  

                 

 