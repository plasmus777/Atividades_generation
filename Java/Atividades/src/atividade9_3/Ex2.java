package atividade9_3;

import java.util.Scanner;

public class Ex2 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int numero;
		
		System.out.println("Digite um número: ");
		numero = s.nextInt();
		
		System.out.print("\nO número " + numero + " é ");
		
		if((numero % 2) == 0) {
			System.out.print("par e ");
		} else {
			System.out.print("ímpar e ");
		}
		
		if(numero < 0) {
			System.out.print("negativo.");
		} else {
			System.out.print("positivo.");
		}
		
		s.close();
	}

}
