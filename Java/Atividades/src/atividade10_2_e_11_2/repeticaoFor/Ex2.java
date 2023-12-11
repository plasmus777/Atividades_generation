package atividade10_2_e_11_2.repeticaoFor;

import java.util.Scanner;

public class Ex2 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int num, contImpar = 0, contPar = 0;
		
		
		for(int i = 1; i <= 10; i++) {
			System.out.println("Digite o " + i +"º número: ");
			num = s.nextInt();
			
			if((num % 2) == 0) {
				contPar++;
			} else {
				contImpar++;
			}
		}
		
		System.out.println("Total de números pares: " + contPar);
		System.out.println("Total de números ímpares: " + contImpar);
		
		s.close();
	}

}
