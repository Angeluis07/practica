#funcion si un numero es primo
def es_primo(n):
    if n < 2:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

#funcion si un numero es par
def es_par(n):
    return n % 2 == 0

#funcion si un numero es divisible por 3
def es_divisible_por_3(n):
    return n % 3 == 0

#lista de numeros del 0 al 31
L = [i for i in range(32)]

#lista de numeros primos
L_primos = [i for i in L if es_primo(i)]

#lista de numeros pares
L_pares = [i for i in L if es_par(i)]

#lista de numeros divisibles por 3
L_div3 = [i for i in L if es_divisible_por_3(i)]

#mostras las tres listas
print("Lista de numeros primos:", L_primos)
print("Lista de numeros pares:", L_pares)
print("Lista de numeros divisibles por 3:", L_div3)
