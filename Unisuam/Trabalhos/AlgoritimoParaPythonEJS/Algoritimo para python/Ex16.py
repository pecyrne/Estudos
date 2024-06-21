#Que  leia o código de um aluno e suas três notas. Calcule a média ponderada do aluno, considerando que o peso para a maior nota seja 4 e para as duas restantes, 3. Mostre a média calculada e uma mensagem "APROVADO" se a média for maior ou igual a 5 e "REPROVADO" se a média for menor que 5.

#ESTOU CONSIDERANDO UM SITEMA DE NOTAS ONDE O LIMITE É 10!
#NOTA IMPORTANTE PRA AJUDAR A INTERPRETAR. ESSES WHILE SAO LOOPS INFINITOS, FORÇANDO O USUARIO A DIGITAR UMA NOTA <= 10
Nota_1 = round(float(input("Digite a Primeira nota: ")), 2)
while Nota_1 > 10 :
    Nota_1 = round(float(input("A NOTA NAO PODE SER MAIR QUE 10! Digite a PRIMEIRA nota: ")), 2)

Nota_2 = round(float(input("Digite a Segunda nota: ")), 2)
while Nota_2 > 10 :
    Nota_2 = round(float(input("A NOTA NAO PODE SER MAIR QUE 10! Digite a SEGUNDA nota: ")), 2)

Nota_3 = round(float(input("Digite a terceira nota: ")), 2)
while Nota_3 > 10 :
    Nota_3 = round(float(input("A NOTA NAO PODE SER MAIR QUE 10! Digite a TERCEIRA nota: ")), 2)

#Comparações para verificar quais das notas é maior
if Nota_1 > Nota_2 and Nota_1 > Nota_3 :
    Media = round(((Nota_1 * 4) + (Nota_2 * 3) + (Nota_3 * 3 )) / 10, 2)
elif Nota_2 > Nota_1 and Nota_2 > Nota_3 :
    Media = round(((Nota_1 * 3) + (Nota_2 * 4) + (Nota_3 * 3)) / 10, 2)
else :
    Media = round(((Nota_1 * 3) + (Nota_2 * 3) + (Nota_3 * 4)) / 10, 2)

if Media >= 7 :
    print("Aprovado!")
elif Media >= 4 :
    print("Prova Final!")
else :
    print("Reprovado!")
print("A media ponderada das notas é: ", Media)
