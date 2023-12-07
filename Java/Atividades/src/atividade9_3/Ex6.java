package atividade9_3;

import java.util.Scanner;

public class Ex6 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		String nome, cargo;
		int codigo;
		float salario, novoSalario, reajuste;
		
		System.out.println("Nome do Colaborador: ");
		nome = s.nextLine();
		
		System.out.println("Cargo: ");
		codigo = s.nextInt();
		
		System.out.println("Salário: ");
		salario = s.nextFloat();
		
		switch(codigo) {
		case 1:
			cargo = "Gerente";
			reajuste = (float) 0.1;
			break;
		case 2:
			cargo = "Vendedor";
			reajuste = (float) 0.07;
			break;
		case 3:
			cargo = "Supervisor";
			reajuste = (float) 0.09;
			break;
		case 4:
			cargo = "Motorista";
			reajuste = (float) 0.06;
			break;
		case 5:
			cargo = "Estoquista";
			reajuste = (float) 0.05;
			break;
		case 6:
			cargo = "Técnico de TI";
			reajuste = (float) 0.08;
			break;
		default:
			cargo = "Cargo Inválido";
			reajuste = 0;
		}
		
		novoSalario = salario + (reajuste * salario);
		
		System.out.println("\nNome do Colaborador: " + nome);
		System.out.println("Cargo: " + cargo);
		System.out.println("Salário: " + novoSalario);
		
		s.close();
	}
}
