
aproboMasDeNMaterias ::  [(String, [Int])] -> String -> Int -> Bool
aproboMasDeNMaterias [] _ _ = False
aproboMasDeNMaterias ((nombre1, notas1): xs) alumno n | alumno == nombre1 && nNotasMayoresA4 n notas1 = True
                                                      | otherwise = aproboMasDeNMaterias xs alumno n

contadorNotasMayoresA4 :: [Int] -> Int
contadorNotasMayoresA4 [] = 0
contadorNotasMayoresA4 (notas:xs) | notas >= 4 = 1 + contadorNotasMayoresA4 xs
                                  | notas <= 4 =  contadorNotasMayoresA4 xs

nNotasMayoresA4 :: Int -> [Int] -> Bool
nNotasMayoresA4 _ [] = False
nNotasMayoresA4 n (notas:xs) | contadorNotasMayoresA4 (notas:xs) >= n = True
                             | otherwise = False

buenosAlumnos :: [(String, [Int])] -> [String]
buenosAlumnos [] = []
buenosAlumnos ((nombre1, notas1):xs) | promedioDeNotas (notas1) >= 8 && (contadorDeNotasMenoresA4 (notas1)) == 0 = nombre1 : buenosAlumnos xs
                                     | otherwise = buenosAlumnos xs

contadorDeNotasMenoresA4 :: [Int] -> Int
contadorDeNotasMenoresA4 [] = 0
contadorDeNotasMenoresA4 (notas:xs) | notas <= 4 = 1 + contadorDeNotasMenoresA4 xs
                                    | notas >= 4 = contadorDeNotasMenoresA4 xs

promedioDeNotas :: [Int] -> Float
promedioDeNotas [] = 0
promedioDeNotas (nota1:xs) = fromIntegral (sumaDeElementos (nota1:xs)) / fromIntegral (longitud (nota1:xs))

sumaDeElementos :: [Int] -> Int
sumaDeElementos [] = 0
sumaDeElementos (nota1:xs) = nota1 + sumaDeElementos xs

longitud :: [Int] -> Int
longitud [] = 0
longitud (nota1:xs) | nota1==nota1 = 1 + longitud xs
                    | otherwise = longitud xs 

mejorPromedio :: [(String, [Int])] -> String
mejorPromedio [] = []
mejorPromedio [(nombre1, notas1)] = nombre1
mejorPromedio [(nombre1, notas1), (nombre2, notas2)]  | promedioDeNotas notas1 >= promedioDeNotas notas2 = nombre1
                                                      | promedioDeNotas notas1 <= promedioDeNotas notas2 = nombre2
                                                      | otherwise = nombre1
mejorPromedio ((nombre1, notas1):(nombre2, notas2):xs) | promedioDeNotas notas1 >= promedioDeNotas notas2 = mejorPromedio ((nombre1, notas1):xs)
                                                       | otherwise = mejorPromedio ((nombre2, notas2):xs)

seGraduoConHonores :: [(String, [Int])] -> Int -> String -> Bool
seGraduoConHonores [] _ _ = False
seGraduoConHonores ((nombre1,notas1): xs) cantDeMaterias alumno | (aproboMasDeNMaterias ((nombre1, notas1): xs) alumno (cantDeMaterias - 1)) && (pertenece alumno (buenosAlumnos ((nombre1, notas1):xs))) && (pertenece alumno (seGraduoConHonoresAux ((nombre1, notas1):xs))) = True
                                                                | otherwise = False

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece alumno (nombre1:xs) | alumno == nombre1 = True
                              | otherwise = pertenece alumno xs 

mejorPromedioNumero :: [(String, [Int])] -> Float
mejorPromedioNumero [] = 0
mejorPromedioNumero [(nombre1, notas1)] = (promedioDeNotas notas1)
mejorPromedioNumero [(nombre1, notas1), (nombre2, notas2)] | promedioDeNotas notas1 >= promedioDeNotas notas2 = (promedioDeNotas notas1)
                                                           | promedioDeNotas notas1 <= promedioDeNotas notas2 = (promedioDeNotas notas2)
                                                           | promedioDeNotas notas1 == promedioDeNotas notas2 = (promedioDeNotas notas1)
mejorPromedioNumero ((nombre1, notas1):(nombre2, notas2):xs)  | promedioDeNotas notas1 >= promedioDeNotas notas2 = mejorPromedioNumero ((nombre1, notas1):xs)
                                                              | otherwise = mejorPromedioNumero ((nombre2, notas2):xs)

seGraduoConHonoresAux :: [(String, [Int])] -> [String]
seGraduoConHonoresAux [] = []
seGraduoConHonoresAux ((nombre1, notas1):xs) | promedioDeNotas notas1 >= (mejorPromedioNumero ((nombre1, notas1):xs) - 1) = nombre1 : seGraduoConHonoresAux xs
                                             | otherwise = seGraduoConHonoresAux xs
