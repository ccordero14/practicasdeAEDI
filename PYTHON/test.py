# ejercicio1:

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

# ejercicio 2:

def imprimir_saludo(nombre:str)->str:
    return "hola " + nombre

def raiz_cuadrada_de(numero: float)->float:
    return math.sqrt(numero)  

def fahrenheit_a_celcius(tempF:float)->float:
    return ((tempF - 32) * 5)/9

def imprimir_dos_veces(estribillo:str)-> str:
    return estribillo *2

def es_multiplo_de(a:int, b:int)->bool:
    res: bool= a%b==0
    return res

def es_par(a:int)-> bool:
    res: bool= a%2==0
    return res

def cantidad_de_pizzas(comensales:int, min_cant_de_porciones: int)->int:
    return math.ceil ((comensales*min_cant_de_porciones)/8)

# ejercicio 3:

def alguno_es_cero(a:int, b:int)-> bool:
    res: bool= a==0 or b ==0
    return res

def ambos_son_cero(a:int, b:int)-> bool:
    res: bool= a==0 and b ==0
    return res

def es_bisiesto(año:int)->bool:
    return año%400 == 0 or año%4==0 and not año%100==0

# ejercicio 4:

def peso_pino(altura:int)->int:
    if altura<=3 :
        res= altura * 300
    else:
        res= 900 + ((altura - 3)*200)
    return res

def es_peso_util(peso:int)-> bool:
    return peso>=400 and peso<=1000

def sirve_pino(altura:int)->bool:
    return es_peso_util(peso_pino(altura))

# ejercicio 5:

def devolver_el_doble_si_es_par(numero:int)->int:
    if numero%2==0:
        res= numero*2
    else: 
        res= numero

    return res

def devolver_valor_si_es_par_sino_el_que_sigue(numero:int)->int:
        if numero%2==0:
            res= numero
        else:
            res=numero+1
        return res

def devolver_el_doble_si_es_multiplo3_el_triple_si_es_multiplo9(numero:int)->int:
    if numero%9==0:
        res=numero*3
    else:
        if numero%3==0:
            res=numero*2
    return res

def lindo_nombre(nombre:str)->str:
    largo:int=len(nombre)
    if largo>=5:
        res= "Tu nombre tiene muchas letras!"
    else: 
        res= "Tu nombre tiene menos de 5 caracteres!"

    return res

def elRango(numero:int)->str:
    if numero<5:
        res="Menor a 5"
    else:
        if numero>=10 and numero<=20:
            res="Entre 10 y 20"
        else:
            if numero>20:
                res="Mayor a 20"
            else:
                res= " "
            
    return res

def vacacionesOTrabajo(sexo:chr, edad:int)->str:
    if sexo=="M" and edad>=65 or sexo=="F" and edad>=60 or sexo=="F" and edad<18 or sexo=="M" and edad<18:
        res="Andá de vacaciones"
    else:
        if sexo=="M" and edad<65 or sexo=="F" and edad<60:
            res="Te toca trabajar"
    return res

