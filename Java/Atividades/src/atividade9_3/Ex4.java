package atividade9_3;

import java.util.Scanner;

public class Ex4 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		String a, b, c;
		
		System.out.println("Digite três strings: ");
		
		a = s.nextLine();
		b = s.nextLine();
		c = s.nextLine();
		
		System.out.println("\nO animal escolhido é: ");
		
		if(a.equalsIgnoreCase("Vertebrado")) {
			if(b.equalsIgnoreCase("Ave")) {
				if(c.equalsIgnoreCase("Carnívoro")) {
					System.out.println("Águia");
				} else if(c.equalsIgnoreCase("Onívoro")) {
					System.out.println("Pomba");
				} else {
					System.out.println("Erro na leitura da string C.");
				}
			} else if(b.equalsIgnoreCase("Mamífero")) {
				if(c.equalsIgnoreCase("Onívoro")) {
					System.out.println("Homem");
				} else if(c.equalsIgnoreCase("Herbívoro")) {
					System.out.println("Vaca");
				} else {
					System.out.println("Erro na leitura da string C.");
				}
			} else {
				System.out.println("Erro na leitura da string B.");
			}
		} else if (a.equalsIgnoreCase("Invertebrado")) {
			if(b.equalsIgnoreCase("Inseto")) {
				if(c.equalsIgnoreCase("Hematófago")) {
					System.out.println("Pulga");
				} else if(c.equalsIgnoreCase("Herbívoro")) {
					System.out.println("Lagarta");
				} else {
					System.out.println("Erro na leitura da string C.");
				}
			} else if(b.equalsIgnoreCase("Anelídeo")) {
				if(c.equalsIgnoreCase("Hematófago")) {
					System.out.println("Sanguessuga");
				} else if(c.equalsIgnoreCase("Onívoro")) {
					System.out.println("Minhoca");
				} else {
					System.out.println("Erro na leitura da string C.");
				}
			} else {
				System.out.println("Erro na leitura da string B.");
			}
		} else {
			System.out.println("Erro na leitura da string A.");
		}
		
		s.close();
	}
	
}
