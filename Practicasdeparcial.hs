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

