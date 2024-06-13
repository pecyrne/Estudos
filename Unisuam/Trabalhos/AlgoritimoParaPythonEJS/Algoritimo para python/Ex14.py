#Que leia três números e mostre-os em ordem decrescente.

Numero_1 = float(input("Digite o primeiro numero: "))
Numero_2 = float(input("Digite o segundo numero: "))
Numero_3 = float(input("Digite o terceiro numero: "))

#Caso os numeros sejam iguais!
if Numero_1 == Numero_2 and Numero_2 == Numero_3:
    print(Numero_1,"=", Numero_2,"=", Numero_3)
#Aqui é caso o maior numero seja o 1!
elif Numero_1 > Numero_2 and Numero_1 > Numero_3 :
    if Numero_2 > Numero_3 :
        print(Numero_1, ">", Numero_2, ">", Numero_3)
    else :
        print(Numero_1, ">", Numero_3, ">", Numero_2)
#Aqui é caso o maior numero seja o 2!
elif Numero_2 > Numero_1 and Numero_2 > Numero_3 :
    if Numero_3 > Numero_1 :
        print(Numero_2, ">", Numero_3, ">", Numero_1)
    else :
        print(Numero_2, ">", Numero_1, ">", Numero_3)
#Aqui é caso nem o numero 1 e o 2 sejam o maior!
else :
    if Numero_1 > Numero_2 :
        print(Numero_3, ">", Numero_1, ">", Numero_2)
    else:
        print(Numero_3, ">", Numero_2, ">", Numero_1)
