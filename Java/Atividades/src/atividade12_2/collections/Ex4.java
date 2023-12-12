package atividade12_2.collections;

import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Ex4 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int num;
		
		Set<Integer> conjunto = new HashSet<Integer>();
		
		conjunto.add(2);
		conjunto.add(5);
		conjunto.add(1);
		conjunto.add(3);
		conjunto.add(4);
		conjunto.add(9);
		conjunto.add(7);
		conjunto.add(8);
		conjunto.add(10);
		conjunto.add(6);
		
		System.out.println(conjunto);
		
		System.out.println("\nPor favor, digite um número inteiro: ");
		num = s.nextInt();
		
		if(conjunto.contains(num)) {
			System.out.println("O número " + num + " foi encontrado no conjunto.");
		} else {
			System.out.println("O número " + num + " não foi encontrado no conjunto!");
		}
		
		s.close();
	}

}
