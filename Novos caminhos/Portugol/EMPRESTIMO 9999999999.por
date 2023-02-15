programa
{
	funcao inicio()
	{
		real valor, tempo, salario
		escreva("Valor do salario atual ")
		leia(salario)
		escreva("Valor do emprestimo ")
		leia(valor)
		escreva("Em quantas parcelas ")
		leia(tempo)
		se (valor >= salario*0.30){
			escreva("Emprestimo negado.")
		}senao{
			escreva("Emprestimo aprovado.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */