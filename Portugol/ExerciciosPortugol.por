programa
{
	
	funcao ex1()
	{
		escreva("\nPor favor, insira dez números inteiros: ")

		inteiro vetor[10], numero, i, j, aux

		para (i = 0; i < 10; i++)
		{
				leia(numero)
				vetor[i] = numero
		}

		i = 0
		enquanto (i < 10)
		{
			j = i
			enquanto (j < 10)
			{
				se(vetor[i] < vetor[j])
				{
					aux = vetor[i]
					vetor[i] = vetor[j]
					vetor[j] = aux	
				}
				
				j++
			}
			
			i++
		}

		para (i = 0; i < 10; i++)
		{
				escreva("[", vetor[i], "] ")
		}
	}

	funcao ex2()
	{
		escreva("\nPor favor, insira dez números inteiros: ")

		inteiro vetor[10], numero, i, soma = 0
		real media

		para (i = 0; i < 10; i++)
		{
				leia(numero)
				vetor[i] = numero
		}

		i = 0
		escreva("Os elementos nos índices ímpares do vetor são: ")
		enquanto(i < 10)
		{
			se((i % 2) != 0)
			{
				escreva("[", vetor[i], "] ")
			}
			
			i ++
		}

		escreva("\nOs elementos nos pares do vetor são: ")
		para (i = 0; i < 10; i++)
		{
				se((vetor[i] % 2) == 0)
			{
				escreva("[", vetor[i], "] ")
			}
		}

		para (i = 0; i < 10; i++)
		{
			soma += vetor[i]
		}
		escreva("\nA soma de todos os elementos do vetor é igual a: ", soma)

		media = soma / 10
		escreva("\nA média de todos os elementos do vetor é igual a: ", media)
	}
	
	funcao inicio()
	{
		ex1()
		escreva("\n-----------------------------------\n")
		ex2()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1327; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */