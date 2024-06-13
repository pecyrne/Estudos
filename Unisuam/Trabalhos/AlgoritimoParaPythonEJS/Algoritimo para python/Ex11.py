#Calcule a média aritmética das 3 notas de um aluno e mostre, além do valor da média, uma mensagem de "Aprovado", caso a média seja igual ou superior a 7,  caso contrário "reprovado".

#ESTOU CONSIDERANDO UM SITEMA DE NOTAS ONDE O LIMITE É 10!010
Nota_1 = round(float(input("Digite a Primeira nota: ")), 2)
while Nota_1 > 10 :
    Nota_1 = round(float(input("A NOTA NAO PODE SER MAIR QUE 10! Digite a PRIMEIRA nota: ")), 2)
Nota_2 = round(float(input("Digite a Segunda nota: ")), 2)
while Nota_2 > 10 :
    Nota_2 = round(float(input("A NOTA NAO PODE SER MAIR QUE 10! Digite a SEGUNDA nota: ")), 2)
Nota_3 = round(float(input("Digite a terceira nota: ")), 2)
while Nota_3 > 10 :
    Nota_3 = round(float(input("A NOTA NAO PODE SER MAIR QUE 10! Digite a TERCEIRA nota: ")), 2)
Media = round((Nota_1 + Nota_2 + Nota_3)/3, 2)
if Media >= 7 :
    print("Aprovado!")
else :
    print("Reprovado!")
print("A media aritimetica das notas é: ", Media)
