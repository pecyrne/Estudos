programa
{
	funcao inicio()
	{
		inteiro n1, n2, r, lolo
		
		escreva("CALCULADORA SEM LOLO")
		escreva("\nSelecione:\n 1= Soma\n 2= Subtra��o\n 3= Multiplica��o\n 4= Divis�o\n")
		leia(lolo)
		limpa()
			se(lolo == 1){
			escreva("\n Insira os valores para soma: \n")
			leia(n1)
			escreva("\n + ")
			leia(n2)
			r = n1+n2
			escreva("Resultado da adi��o: ")
			escreva(r)
			}senao{
			
			se(lolo == 2){
			escreva("\n Insira os valores para Subtra��o: \n")
			leia(n1)
			escreva("\n - ")
			leia(n2)
			r = n1-n2
			escreva("Resultado da subtra��o: ")
			escreva(r)
			}senao{
					se(lolo == 3){
			escreva("\n Insira os valores para Multiplica��o: \n")
			leia(n1)
			escreva("\n * ")
			leia(n2)
			r = n1*n2
			escreva("Resultado da Multiplica��o: ")
			escreva(r)
			}senao{
				se(lolo == 4){
			escreva("\n Insira os valores para Divis�o: \n")
			leia(n1)
			escreva("\n / ")
			leia(n2)
			r = n1/n2
			escreva("Resultado da divis�o: ")
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
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {lolo, 5, 21, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */