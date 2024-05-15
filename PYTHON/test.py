def imprimir_hola_mundo ():
    print('¡Hola mundo!')

def perimetro() -> float:
    return  2*math.pi

def es_multiplo_de(n:int, m:int)->bool:
    res: bool=((n/m)%1)==0 #mod n/m es valido tmb
    return res

def es_nombre_largo (nombre:str) -> bool:
    largo:int=len(nombre)
    res:bool = (3<=largo and largo<=8)
    return res

def foo(t:int):
    res = 2*t
    return res

def imprimir_verso_cancion ():
    print("im super shy, super shy\nbut wait a minute while i make you mine, make you mine\nkoreanlmao youre on my mind, all the time\ni wanna tell you but im super shy, super shy")

import math

def raizDe2()->float:
    return round (math.sqrt (2) , 2)

def factorial_2()->int:
    return math.factorial (2)

def imprimir_saludo(nombre:str)->str:
    return "hola nombre"

