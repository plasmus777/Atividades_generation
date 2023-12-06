programa
{
	
	funcao numeroMaiorQueDez()
	{
			inteiro numero
			
			escreva("\nPor favor, digite um número: ")
			leia(numero)

			escreva("\nO número ", numero, " é maior do que 10?")

			se(numero > 10)
			{
				escreva("\nverdadeiro")	
			}
			senao
			{
				escreva("\nfalso")
			}
	}

	funcao divisivelPor4ou9()
	{
		inteiro numero
			
		escreva("\nPor favor, digite um número: ")
		leia(numero)

		escreva("\nO número ", numero, " é divisível por 4 ou 9?")

		se(((numero % 4) == 0) ou ((numero % 9) == 0))
		{
			escreva("\nverdadeiro")
		}
		senao
		{
			escreva("\nfalso")
		}
	}
	
	funcao inicio()
	{
		//numeroMaiorQueDez()

		escreva("\n------------------------\n")
		
		divisivelPor4ou9()
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 609; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */