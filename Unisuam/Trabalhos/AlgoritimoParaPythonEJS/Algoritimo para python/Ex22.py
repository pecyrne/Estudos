# Construir um algoritmo que calcule o somatório de vários valores inteiros, lidos externamente. O final da leitura acontecerá quando for lido um valor negativo.

numero = int(input("Informe um numero: "))
soma = 0
while numero >= 0 :
    soma = soma + numero
    numero = int(input("Informe um numero: "))
print("Somatorio: ",soma)