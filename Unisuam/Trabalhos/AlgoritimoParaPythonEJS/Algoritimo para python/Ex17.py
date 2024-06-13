#Elaborar um algoritmo que lê 2 valores a e b e os escreve com a mensagem: “São múltiplos” ou “Não são múltiplos”.

Valor_a = int(input("Digite o valor A: "))
Valor_b = int(input("Digite o valor B: "))

if Valor_a%Valor_b == 0 :
    print("Os numeros,",Valor_a, "e,", Valor_b," sao multiplos.")
else :
    print("Os numeros,",Valor_a, "e,", Valor_b," não sao multiplos.")