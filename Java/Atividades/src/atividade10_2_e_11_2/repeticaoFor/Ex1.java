package atividade10_2_e_11_2.repeticaoFor;

import java.util.Scanner;

public class Ex1 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int num1, num2;
		
		System.out.println("Por favor, digite o primeiro número do intervalo: ");
		num1 = s.nextInt();
		
		System.out.println("Por favor, digite o segundo número do intervalo: ");
		num2 = s.nextInt();
		
		if(num1 >= num2) {
			System.out.println("O intervalo inserido [" + num1 + ", " + num2 + "] é inválido!");
		} else {
			System.out.println("No intervalo entre " + num1 + " e " + num2 + ":");
			for(int i = num1; i <= num2; i++) {
				if((i % 3) == 0 && (i % 5) == 0) {
					System.out.println(i + " é múltiplo de 3 e 5");
				}
			}
		}
		
		s.close();
	}
}
