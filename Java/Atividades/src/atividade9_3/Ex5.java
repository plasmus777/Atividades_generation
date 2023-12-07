package atividade9_3;

import java.util.Scanner;

public class Ex5 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int codigo;
		int quantidade;
		float preco;
		String nome;
		
		System.out.println("Digite o código do produto: ");
		codigo = s.nextInt();
		
		System.out.println("Digite a quantidade comprada: ");
		quantidade = s.nextInt();
		
		switch(codigo){
		case 1:
			nome = "Cachorro Quente";
			preco = (float) 10.00;
			break;
		case 2:
			nome = "X-Salada";
			preco = (float) 15.00;
			break;
		case 3:
			nome = "X-Bacon";
			preco = (float) 18.00;
			break;
		case 4:
			nome = "Bauru";
			preco = (float) 12.00;
			break;
		case 5:
			nome = "Refrigerante";
			preco = (float) 8.00;
			break;
		case 6:
			nome = "Suco de Laranja";
			preco = (float) 13.00;
			break;
		default:
			nome = "Produto Inválido";
			preco = 0;
		}
		
		System.out.println("Produto: " + nome);
		System.out.printf("Valor Total: R$ %.2f", (quantidade * preco));
		
		s.close();
	}

}
