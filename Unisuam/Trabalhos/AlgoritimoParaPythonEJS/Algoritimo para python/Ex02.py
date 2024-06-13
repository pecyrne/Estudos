#⦁	Crie um programa que solicite o ano de nascimento do usuário e exiba a idade desta pessoa, considere que ela já fez aniversário.

#importando uma biblioteca para colher a data
from datetime import date

#Utilizando a biblioteca para obter a data atual
Data_Atual = date.today()
Ano_Atual = int(Data_Atual.strftime("%Y"))

#Obtendo a data de nascimento do usuario atraves de um input e Escrevendo a idade dele (considerando que ele ja fez aniversario)
Ano_Nascimento = int(input("Digite o ano do seu nascimento: "))
print("Sua idade é:", Ano_Atual - Ano_Nascimento ,"anos!")