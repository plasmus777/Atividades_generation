package atividade8_4;

import java.util.Scanner;

//Calcula a média final baseada em quatro diferentes notas
public class Ex2 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		float nota1, nota2, nota3, nota4, media;
		
		System.out.println("Nota 1: ");
		nota1 = s.nextFloat();
		
		System.out.println("Nota 2: ");
		nota2 = s.nextFloat();
		
		System.out.println("Nota 3: ");
		nota3 = s.nextFloat();
		
		System.out.println("Nota 4: ");
		nota4 = s.nextFloat();
		
		media = (nota1 + nota2 + nota3 + nota4)/4;
		
		System.out.printf("\nMédia final: %.1f", media);
		
		s.close();
	}

}
