#Leia os valores A e B e diga se A + B é menor que C

a = float(input("Insira o valor 'A' : "))
b = float(input("Insira o valor 'B' : "))
c = float(input("Insira o valor 'C' :"))

if a + b < c :
    print("A soma de", a, "+", b, "é :", a+b, "\nÉ menor que: ",c)
else :
    print("A soma de", a, "+", b, "é :", a + b, "\nÉ maior que: ", c)
