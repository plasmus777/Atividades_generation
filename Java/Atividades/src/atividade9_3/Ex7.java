package atividade9_3;

import java.util.Scanner;

public class Ex7 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		float a, b, resultado;
		int operacao;
		
		System.out.println("Digite o 1º número: ");
		a = s.nextFloat();
		
		System.out.println("Digite o 2º número: ");
		b = s.nextFloat();
		
		System.out.println("Digite o código da operação: ");
		operacao = s.nextInt();
		
		if(operacao > 4 || operacao < 1) {
			System.out.println("Operação Inválida!");
		} else {
			switch(operacao) {
			case 1:
				resultado = a + b;
				System.out.println(a + " + " + b + " = " + resultado);
				break;
			case 2:
				resultado = a - b;
				System.out.println(a + " - " + b + " = " + resultado);
				break;
			case 3:
				resultado = a * b;
				System.out.println(a + " * " + b + " = " + resultado);
				break;
			case 4:
				resultado = a / b;
				System.out.println(a + " / " + b + " = " + resultado);
				break;
			}
		}
		
		s.close();
	}

}
