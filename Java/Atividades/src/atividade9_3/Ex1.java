package atividade9_3;

import java.util.Scanner;

public class Ex1 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int a, b, c;
		
		System.out.println("Digite o número A:");
		a = s.nextInt();
		
		System.out.println("Digite o número B:");
		b = s.nextInt();
		
		System.out.println("Digite o número C:");
		c = s.nextInt();
		
		System.out.println("\n A = " + a + "; B = " + b + "; C = " + c + ".");
		System.out.println("A + B = " + (a + b));
		
		if((a + b) > c) {
			System.out.println("\nA soma de A + B (" + (a+b) + ") é maior que C (" + c + ").");
		} else if((a + b) == c) {
			System.out.println("\nA soma de A + B (" + (a+b) + ") é igual a C (" + c + ").");
		} else{
			System.out.println("\nA soma de A + B (" + (a+b) + ") é menor que C (" + c + ").");
		}
		
		s.close();
	}

}
