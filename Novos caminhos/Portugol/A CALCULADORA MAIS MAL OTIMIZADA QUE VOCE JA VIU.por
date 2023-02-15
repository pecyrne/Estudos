programa
{
	funcao inicio()
	{
		inteiro n1, n2, r, lolo
		
		escreva("CALCULADORA SEM LOLO")
		escreva("\nSelecione:\n 1= Soma\n 2= Subtração\n 3= Multiplicação\n 4= Divisão\n")
		leia(lolo)
		limpa()
			se(lolo == 1){
			escreva("\n Insira os valores para soma: \n")
			leia(n1)
			escreva("\n + ")
			leia(n2)
			r = n1+n2
			escreva("Resultado da adição: ")
			escreva(r)
			}senao{
			
			se(lolo == 2){
			escreva("\n Insira os valores para Subtração: \n")
			leia(n1)
			escreva("\n - ")
			leia(n2)
			r = n1-n2
			escreva("Resultado da subtração: ")
			escreva(r)
			}senao{
					se(lolo == 3){
			escreva("\n Insira os valores para Multiplicação: \n")
			leia(n1)
			escreva("\n * ")
			leia(n2)
			r = n1*n2
			escreva("Resultado da Multiplicação: ")
			escreva(r)
			}senao{
				se(lolo == 4){
			escreva("\n Insira os valores para Divisão: \n")
			leia(n1)
			escreva("\n / ")
			leia(n2)
			r = n1/n2
			escreva("Resultado da divisão: ")
			escreva(r)
			}senao{
				escreva("\nCOLOCOU O NUMERO ERRADO AI BROTHER")
				escreva("\n TMJ")
			}
			}
			}
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {lolo, 5, 21, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */