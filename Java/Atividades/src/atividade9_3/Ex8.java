package atividade9_3;

import java.util.Scanner;

public class Ex8 {
	
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int operacao;
		float saldo = 1000, valor;
		
		System.out.println("Por favor, digite o código da operação a ser realizada: ");
		operacao = s.nextInt();
		
		switch(operacao) {
		case 1:
			System.out.println("Operação - Saldo");
			System.out.println("Saldo: " + saldo);
			break;
		case 2:
			System.out.println("Valor: ");
			valor = s.nextFloat();
			
			System.out.println("Operação - Saque");
			
			if(valor > saldo) {
				System.out.println("Saldo Insuficiente!");
			} else {
				saldo -= valor;
				System.out.println("Novo Saldo: " + saldo);
			}
			
			break;
		case 3:
			System.out.println("Valor: ");
			valor = s.nextFloat();
			
			System.out.println("Operação - Depósito");
			
			saldo += valor;
			System.out.println("Novo Saldo: " + saldo);
			break;
		default:
			System.out.println("Operação Inválida!");
		}
		
		s.close();
	}
	
}
