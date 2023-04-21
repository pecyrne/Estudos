programa
{
	funcao inicio()
	{
		real salario, tempo
		escreva("Atual salario: ")
		leia(salario)
		escreva("Quanto tempo no trampo: ")
		leia(tempo)
		se (tempo >=5 ){
			salario = salario + salario * 0.20
			escreva("O novo salario é de: R$", salario)
		}senao{
			salario = salario + salario * 0.10
			escreva("O novo salario é de: R$", salario)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 364; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */