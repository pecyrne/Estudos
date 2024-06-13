#Que leia dois números e indique se são iguais ou, se diferentes, mostre o maior e o menor (nesta sequência).

Numero_1 = float(input("Digite o primeiro numero: "))
Numero_2 = float(input("Digite o segundo numero: "))
if Numero_1 == Numero_2 :
    print("Os numeros são iguais!")
elif Numero_1 > Numero_2 :
    print(Numero_1, ">", Numero_2)
elif Numero_2 > Numero_1 :
    print(Numero_2, ">", Numero_1)