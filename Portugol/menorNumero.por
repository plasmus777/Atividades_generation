programa {
	
	funcao inicio() {
		real menorNumero
		real recente
		inteiro i = 0

		escreva("\nPor favor, digite os cinco números a serem lidos: ")
		leia(recente)
		menorNumero = recente
		
		enquanto (i < 4) {
			escreva("\nPor favor, digite os cinco números a serem lidos: ")
			leia(recente)

			se (recente < menorNumero) {
					menorNumero = recente
			}
			
			i += 1
		}
		
		escreva("\nO menor número encontrado foi: ", menorNumero)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 340; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */