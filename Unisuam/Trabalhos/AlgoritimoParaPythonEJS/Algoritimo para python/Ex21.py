# Crie um programa para solicitar o ano atual e o ano de nascimento de uma pessoa e informar-la se é superior ou inferior a 16 anos e mostrar "nao pode votar"

ano_atual = int(input("Digite o ano atual: "))
ano_nascimento = int(input("Digite o seu ano de NASCIMENTO: "))

if ano_atual - ano_nascimento >= 16 :
    print("Pode votar")
else :
    print("É menor de 16, nao pode votar")
