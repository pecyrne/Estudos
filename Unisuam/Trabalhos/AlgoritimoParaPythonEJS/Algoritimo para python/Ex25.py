# Escreva um algoritmo que leia o código de um aluno e suas três notas. Calcule a média ponderada do aluno, considerando peso 4 para a primeira nota e para as duas restantes, 3. Para cada aluno dizer se ele está aprovado ou reprovado e ao final do processamento exibir o total de alunos aprovados e reprovados, considere média 6 para aprovação.
# MP = (4 x NT1 + 3 x NT2 + 3 x NT3) / 10.

quantidade_aprovado = 0
quantidade_reprovado = 0
resposta = "sim"
def verificacao_nota(texto) :
    while True:
        try:
            nota = round(float(input(texto)), 2)
            if nota <= 10:
                return nota
            else:
                print("A NOTA NÃO PODE SER MAIOR QUE 10!")
        except ValueError:
            print("Por favor, insira um número válido.")

while resposta[:3].lower()  == "sim" :
    codigo_aluno = int(input("Informe o codigo do aluno: "))
#ESTOU CONSIDERANDO UM SITEMA DE NOTAS ONDE O LIMITE É 10!
    Nota_1 = verificacao_nota("Digite a PRIMEIRA nota: ")
    Nota_2 = verificacao_nota("Digite a SEGUNDA nota: ")
    Nota_3 = verificacao_nota("Digite a TERCEIRA nota: ")

    Media = round(((Nota_1 * 4) + (Nota_2 * 3) + (Nota_3 * 3 )) / 10, 2)

    if Media >= 6 :
        print("Aluno Aprovado!")
        quantidade_aprovado += 1
    else :
        print("Aluno Reprovado!")
        quantidade_reprovado += 1

    print("A media ponderada das notas é: ", Media)

    resposta = str(input("Voce quer informar mais um aluno? "))

print("Quantidade de alunos aprovados: ",quantidade_aprovado, "\nQuantidade de alunos reprovados: ", quantidade_reprovado)