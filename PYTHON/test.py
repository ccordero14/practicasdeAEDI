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

# ejercicio 6:

def del1Al10():
    numero=1
    while numero <=10:
        print (numero)
        numero += 1

def paresDel10a40():
    numero=10
    while numero <= 40:
        print (numero)
        numero += 2

def eco10Veces():
    repeticion=0
    while repeticion < 10:
        print ("eco")
        repeticion += 1
        
def cuentaRegresiva(cuenta:int):
    while cuenta>0:
        print (cuenta)
        cuenta -=1
    return print ("Despegue!")

def viajeEnElTiempo(añodepartida:int, añodellegada:int)->str:
    print(f"estamos en el año {añodepartida}, viajaremos al año {añodellegada}")
    while añodepartida>=añodellegada:
        print (f"viajó un año al pasado, estamos en el año: {añodepartida}")
        añodepartida -= 1
    return print ("llegamos!")
        
def viajeAristoteles(añodepartida:int)->str:
    añodellegada=-384
    print(f"estamos en el año {añodepartida} b.C., viajaremos a conocer a Aristoteles en {añodellegada} a.C")
    while añodepartida>=añodellegada:
        print (f"viajó 20 años al pasado, estamos en el año: {añodepartida}")
        añodepartida -= 20
    return print (f"llegamos! estamos a {abs(añodepartida+404)} años de Aristoteles")

#ejercicio 7:

def rango1A10():
    for i in range(1,11, 1):
        print (i)
        
def rango10A40():
    for i in range(10,41,2):
        print (i)
        
def eco10VecesRango():
    for i in range (1,11,1):
        print ("eco")
        
def cuentaRegresivaAuto(cuenta:int):
    for i in range(cuenta,0, -1):
        print (i)
    return print ("Despegue!")

def viajeEnElTiempoAuto(añodepartida:int, añodellegada:int)->str:
    print(f"estamos en el año {añodepartida}, viajaremos al año {añodellegada}")
    for i in range (añodepartida, (añodellegada-1), -1):
        print (i)
    return print ("llegamos!")

def viajeAristotelesAuto(añodepartida:int)->str:
    añodellegada=-384
    print(f"estamos en el año {añodepartida} b.C., viajaremos a conocer a Aristoteles en {añodellegada} a.C")
    for i in range (añodepartida, (añodellegada-1), -20):
        print (i)
    return print (f"llegamos! estamos a {abs(i+384)} años de Aristoteles") 

def suma():
    x=5
    y=7
    x=x+y
    print (x)
    
def alCuadrado():
    x=5
    y=7
    z=x+y
    y=z*2
    print (z)
    print (y)
    
def dobleHora():
    x=5
    y=7
    x="hora "
    y=x*2
    print (y)
    
def TorF():
    x=False
    res=not(x)
    return res

def TorFAgain():
    x=False
    x=not(x)
    return x

def noLoSe():
    x=True
    y=False
    res=(x and y)
    x= (res and x)
    print (res)
    print (x)
    
def rt(x: int, g: int) -> int:
    g: int = 0
    g = g + 1
    return x + g

def ro(x: int) -> int:
    global g
    g = g + 1
    return x + g

def rt2 (x:int):
    g=0
    g = g+1
    z=x+g
    return z

def ro2 (x:int):
    g=0
    g=g+1
    z=x+g
    return z
    