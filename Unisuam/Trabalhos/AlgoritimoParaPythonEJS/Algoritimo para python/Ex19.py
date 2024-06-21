# leia dois valores inteiros A e B se os valores forem iguais devera se somar os dois, caso contrario multiplique a por b ao final do calculo atribuir o valor para a var c

a = int(input("Insira o valor 'A' :"))
b = int(input("Insira o valor 'B' :"))

if a == b :
    c = a + b
else :
    c = a * b
print("Valor: ", c)