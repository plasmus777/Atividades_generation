package atividade9_3;

import java.util.Scanner;

public class Ex3 {
	
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		String nome;
		int idade;
		boolean primeiraDoacao, apto;
		
		System.out.println("Digite o nome do doador: ");
		nome = s.nextLine();
		
		System.out.println("Digite a idade do doador: ");
		idade = s.nextInt();
		
		System.out.println("É a primeira doação de sangue?: ");
		primeiraDoacao = s.nextBoolean();
		
		if(idade >= 18 && idade <= 69) {
			if(idade >= 60) {
				if(!primeiraDoacao) {
					apto = true;
				} else {
					apto = false;
				}
			} else {
				apto = true;
			}
		} else {
			apto = false;
		}
		
		if(apto) {
			System.out.println(nome + " está apto(a) a doar sangue.");
		} else {
			System.out.println(nome + " não está apto(a) a doar sangue.");
		}
		
		s.close();
	}
	
}
