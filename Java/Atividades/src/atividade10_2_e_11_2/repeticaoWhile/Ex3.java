package atividade10_2_e_11_2.repeticaoWhile;

import java.util.Scanner;

public class Ex3 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int contadorMenor21 = 0, contadorMaior50 = 0, idade = 50;
		
		while(idade > 0) {
			System.out.println("Por favor, digite uma idade: ");
			idade = s.nextInt();
			
			if(idade < 0)break;
			
			if(idade < 21)contadorMenor21++;
			if(idade > 50)contadorMaior50++;
		}
		
		System.out.println("Total de pessoas com menos de 21 anos de idade: " + contadorMenor21);
		System.out.println("Total de pessoas com mais de 50 anos de idade: " + contadorMaior50);
		
		s.close();
	}
}
