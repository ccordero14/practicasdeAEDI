import Control.Arrow (ArrowLoop(loop))
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
menorDivisorHasta x y | mod x y == 0 = y
                      | otherwise = menorDivisorHasta x (y+1)

menorDivisor :: Integer -> Integer
menorDivisor x | x == 1 = 1
               | otherwise = menorDivisorHasta x 2

esCapicua :: Integer -> Bool
esCapicua x | x < 10 = True
            | inverso x == x = True
            | otherwise = False

inverso :: Integer -> Integer
inverso x | cantDigitos x == 1 = x
          | otherwise = digitoUnidades x * 10 ^ (cantDigitos x - 1) + inverso (sacarUnidades x)

esPrimo :: Integer -> Bool
esPrimo x = menorDivisor x == x

esSumaIninicialDePrimos :: Integer -> Bool
esSumaIninicialDePrimos = esSumaIninicialDePrimerosKPrimos 1

esSumaIninicialDePrimerosKPrimos :: Integer -> Integer -> Bool
esSumaIninicialDePrimerosKPrimos k n | sumaKPrimos k == n = True
                                     | sumaKPrimos k > n = False
                                     | sumaKPrimos k < n =  esSumaIninicialDePrimerosKPrimos (k -1) n

sumaKPrimos :: Integer -> Integer
sumaKPrimos 1 = 2
sumaKPrimos n = sumaKPrimos (n-1) + nEsimoPrimo n

nEsimoPrimo :: Integer -> Integer
nEsimoPrimo 1 = 2
nEsimoPrimo k = proximoPrimoDesde (nEsimoPrimo (k-1))

proximoPrimoDesde :: Integer -> Integer
proximoPrimoDesde n | esPrimo (n-1) = n + 1
                    | otherwise = proximoPrimoDesde (n + 1)

contadorPitagoras :: Integer -> Integer -> Integer -> Integer
contadorPitagoras m n r | m ^ 2 + n ^ 2 <= r^2 = 1
                        | otherwise = 0

loopN :: Integer -> Integer -> Integer -> Integer
loopN m n r | n == 0 = contadorPitagoras m n r 
            | otherwise = contadorPitagoras m n r + loopN m (n-1) r

pitagoras :: Integer -> Integer -> Integer -> Integer
pitagoras m n r | m == 0 = loopN m n r
            | otherwise =  loopN m n r + pitagoras (m-1) n r 





