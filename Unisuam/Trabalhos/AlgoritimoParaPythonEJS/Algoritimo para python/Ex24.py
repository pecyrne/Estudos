# Crie um programa para ler vários números digitados pelo usuário, ao final exibir a quantidade de números positivos e a quantidade de números negativos, o programa será encerrado quando o usuário digitar o número zero.

quantidade_n_positivo = 0
quantidade_n_negativo = 0
numero = int(input("Informe um valor: "))
while numero != 0 :
    if numero > 0 :
        quantidade_n_positivo += 1
    else :
        quantidade_n_negativo += 1
print("A quantidade de numeros positivos: ", quantidade_n_positivo, "\nA quantidade de numeros negativos: ", quantidade_n_negativo)