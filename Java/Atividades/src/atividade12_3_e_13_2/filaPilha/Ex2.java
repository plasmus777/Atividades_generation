package atividade12_3_e_13_2.filaPilha;

import java.util.Scanner;
import java.util.Stack;

public class Ex2 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		Stack<String> pilha = new Stack<String>();
		
		int option;
		
		do {
			System.out.println("**************************************");
			System.out.println("1 - Adicionar livro à pilha");
			System.out.println("2 - Listar todos os livros");
			System.out.println("3 - Retirar livro da pilha");
			System.out.println("0 - Sair");
			System.out.println("**************************************");
			
			System.out.println("Por favor, digite sua opção: ");
			option = s.nextInt();
			s.nextLine();
			
			switch(option) {
			case 1:
				System.out.println("Por favor, digite o nome do livro: ");
				pilha.add(s.nextLine());
				
				System.out.println("Livro adicionado!");
				break;
				
			case 2:
				if(pilha.isEmpty()) {
					System.out.println("A pilha está vazia!");
				} else {
					System.out.println("A pilha contém os livros:" + pilha);
				}
				break;
				
			case 3:
				if(pilha.isEmpty()) {
					System.out.println("A pilha está vazia!");
				} else {
					System.out.println("O livro no topo da pilha \"" + pilha.pop() + "\" foi removido!");
				}
				break;
				
			case 0:
				System.out.println("Saindo do sistema...");
				option = 0;
				break;
				
			default:
				System.out.println("Opção inválida!");
			}
			
		} while(option != 0);
		
		s.close();
	}
}
