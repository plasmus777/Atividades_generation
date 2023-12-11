package atividade10_2_e_11_2.repeticaoWhile;

import java.util.Scanner;

public class Ex4 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int idade, genero, desenvolvedor, numPessoas = 0, somaIdades = 0;
		int categoria1 = 0, categoria2 = 0, categoria3 = 0, categoria4 = 0;
		char confirma = 's';
		
		while(confirma == 's') {
			System.out.println("Idade: ");
			idade = s.nextInt();
			
			System.out.println("Identidade de Gênero: ");
			genero = s.nextInt();
			
			System.out.println("Pessoa Desenvolvedora: ");
			desenvolvedor = s.nextInt();
			
			if(desenvolvedor == 1)categoria1++;
			if((genero == 1 || genero == 4) && desenvolvedor == 2)categoria2++;
			if((genero == 2 || genero == 5) && desenvolvedor == 3 && idade > 40)categoria3++;
			if(genero == 3 && desenvolvedor == 4 && idade < 30)categoria4++;
			
			numPessoas++;
			somaIdades+=idade;
			
			System.out.println("Deseja continuar a inserir dados(s/n)?");
			confirma = s.next().charAt(0);
		}
		
		System.out.println("Total de pessoas desenvolvedoras Backend: " + categoria1);
		System.out.println("Total de Mulheres Cis e Trans desenvolvedoras Frontend: " + categoria2);
		System.out.println("Total de Homens Cis e Trans desenvolvedores Mobile maiores de 40 anos: " + categoria3);
		System.out.println("Total de Pessoas Não Binárias desenvolvedoras FullStack menores de 30 anos: " + categoria4);
		
		float media = somaIdades/numPessoas;
		
		System.out.println("O número total de pessoas que responderam à pesquisa: " + numPessoas);
		System.out.println("A média de idade das pessoas que responderam à pesquisa: " + media);
		
		s.close();
	}
}
