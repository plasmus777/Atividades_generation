package atividade10_2_e_11_2.repeticaoDoWhile;

import java.util.Scanner;

public class Ex5 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int soma = 0, num;
		
		do {
			System.out.println("Por favor, digite um número: ");
			num = s.nextInt();
			
			if(num >= 0) {
				soma += num;
			}
			
			
		} while(num != 0);
		
		System.out.println("A soma dos números positivos é: " + soma);
		
		s.close();
	}

}
