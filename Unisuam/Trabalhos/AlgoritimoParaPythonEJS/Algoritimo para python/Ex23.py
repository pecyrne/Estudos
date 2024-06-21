# Construir um algoritmo que calcule a média aritmética de vários valores inteiros, lidos externamente. O final da leitura acontecerá quando for lido um valor negativo.

numero = int(input("Informe um valor: "))
contador = 0
soma = 0

while numero >= 0 :
    contador += 1
    numero =  int(input("Informe um valor: "))
    soma = soma + numero
print("Media : ", soma/contador)