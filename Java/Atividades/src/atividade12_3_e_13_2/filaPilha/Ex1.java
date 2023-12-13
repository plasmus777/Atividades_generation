package atividade12_3_e_13_2.filaPilha;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class Ex1 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		Queue<String> fila = new LinkedList<String>();
		
		int option;
		
		do {
			System.out.println("**************************************");
			System.out.println("1 - Adicionar cliente à fila");
			System.out.println("2 - Listar todos os clientes");
			System.out.println("3 - Retirar cliente da fila");
			System.out.println("0 - Sair");
			System.out.println("**************************************");
			
			System.out.println("Por favor, digite sua opção: ");
			option = s.nextInt();
			s.nextLine();
			
			switch(option) {
			case 1:
				System.out.println("Por favor, digite o nome do cliente: ");
				fila.add(s.nextLine());
				
				System.out.println("Cliente adicionado!");
				break;
				
			case 2:
				if(fila.isEmpty()) {
					System.out.println("A fila está vazia!");
				} else {
					System.out.println("A fila contém os clientes:" + fila);
				}
				break;
				
			case 3:
				if(fila.isEmpty()) {
					System.out.println("A fila está vazia!");
				} else {
					System.out.println("O primeiro cliente na fila \"" + fila.remove() + "\" foi chamado!");
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
