programa
{
	funcao inicio()
	{
		real raio, circunferencia, aoub, resultado, r1, r2, r3
		escreva("CALCULADORA DE VOLUME\n")
		escreva("Raio = 0\nCircunferencia = 1\n")
		leia(aoub)
		limpa()
		se(aoub==0){
			escreva("Qual o valor do Raio? (EM METROS)\n ")
			leia(raio)
			r1 = raio*raio*raio
			r2 = 3.14 * r1
			r3 = 4/3
			resultado = r3 * r2
			//resultado = 4/3 * 3.14 * raio * raio * raio
			escreva("O volume da esfera é de: ")
			escreva(resultado)
		}senao{
			escreva("Qual o valor da Circinferencia? (EM METROS)\n ")
			leia(circunferencia)
			raio = circunferencia / 2
			r1 = raio*raio*raio
			r2 = 3.14 * r1
			r3 = 4/3
			resultado = r3 * r2
			escreva("O volume da esfera é de: ")
			escreva(resultado)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 531; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */