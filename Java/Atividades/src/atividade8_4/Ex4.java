package atividade8_4;

import java.util.Scanner;

public class Ex4 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		float n1, n2, n3, n4, dif;
		
		System.out.println("numero1: ");
		n1 = s.nextFloat();
		
		System.out.println("numero2: ");
		n2 = s.nextFloat();
		
		System.out.println("numero3: ");
		n3 = s.nextFloat();
		
		System.out.println("numero4: ");
		n4 = s.nextFloat();
		
		dif = (n1 * n2) - (n3 * n4);
		System.out.printf("\nDiferença: %.1f", dif);
		
		s.close();
	}
}
