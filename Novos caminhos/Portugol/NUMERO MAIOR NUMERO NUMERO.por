programa
{
	funcao inicio()
	{
	real n1, n2, n3, menor, maior
	escreva("N�mero 1: ")
	leia(n1)
	escreva("N�mero 2: ")
	leia(n2)
	escreva("N�mero 3: ")
	leia(n3)
	se(n1 > n2 e n1>n3){
		escreva("n1 maior") 
	}senao{
		se(n2 > n1 e n2 > n3){
			escreva("n2 maior")
		}senao{
			se(n3 > n1 e n3 > n2){
				escreva("n3 maior")
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
 * @POSICAO-CURSOR = 40; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */