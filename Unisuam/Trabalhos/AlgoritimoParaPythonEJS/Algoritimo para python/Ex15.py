#Que leia 3 valores a,b,c , a seguir, encontre o maior dos 3 valores e o escreva com a mensagem : "É o maior ".

Numero_1 = float(input("Digite um numero: "))
Numero_2 = float(input("Digite outro numero: "))
Numero_3 = float(input("Digite outro numero: "))

if Numero_1 == Numero_2 and Numero_2 == Numero_3 :
    print("Todos os numeros sao iguais!")
elif Numero_1 > Numero_2 and Numero_1 > Numero_3 :
    print("O primeiro numero é o maior")
elif Numero_2 > Numero_1 and Numero_2 > Numero_3 :
    print("O segundo numero é o maior")
else :
    print("O terceiro numero é o maior")
