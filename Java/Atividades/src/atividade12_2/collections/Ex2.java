package atividade12_2.collections;

import java.util.ArrayList;
import java.util.Scanner;

public class Ex2 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int num;
		
		ArrayList<Integer> lista = new ArrayList<Integer>();
		
		lista.add(5);
		lista.add(7);
		lista.add(2);
		lista.add(35);
		lista.add(21);
		lista.add(6);
		lista.add(18);
		lista.add(23);
		lista.add(9);
		lista.add(10);
		
		System.out.println(lista);
		
		System.out.println("\nPor favor, digite um número: ");
		num = s.nextInt();
		
		if(lista.indexOf(num) != -1) {
			System.out.println("O número " + num + " existe, e está presente no índice " + lista.indexOf(num) + ".");
		} else {
			System.out.println("O número " + num + " não foi encontrado.");
		}
		
		s.close();
	}

}
