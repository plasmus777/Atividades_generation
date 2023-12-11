package atividade10_2_e_11_2.repeticaoDoWhile;

import java.util.Scanner;

public class Ex6 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int num, contMult3 = 0, somaMult3 = 0;
		
		
		do {
			System.out.println("Digite um número: ");
			num = s.nextInt();
			
			if((num % 3) == 0 && num != 0) {
				contMult3++;
				somaMult3+=num;
			}
		} while(num != 0);
		
		float media = (float)somaMult3/contMult3;
		
		System.out.println("A média de todos os números múltiplos de 3 é: " + media);
		
		s.close();
	}

}
