package atividade12_2.collections;

import java.util.ArrayList;
import java.util.Scanner;

public class Ex1 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		ArrayList<String> lista = new ArrayList<String>(); 
		
		for(int i = 0; i < 5; i++) {
			System.out.println("Por favor, digite o nome de uma cor: ");
			lista.add(s.nextLine());
		}
		
		System.out.println("A lista de cores digitadas é:");
		System.out.println(lista);
		System.out.println();
		
		System.out.println("A lista de cores digitadas ordenada é:");
		lista.sort(null);
		System.out.println(lista);
		System.out.println();
		
		s.close();
	}

}
