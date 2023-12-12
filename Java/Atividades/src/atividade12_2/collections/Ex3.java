package atividade12_2.collections;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;
import java.util.Set;

public class Ex3 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		Set<Integer> conjunto = new HashSet<Integer>();
		
		for(int i = 0; i < 10; i++) {
			System.out.println("Por favor, digite um número: ");
			conjunto.add(s.nextInt());
		}
		
		Iterator<Integer> it = conjunto.iterator();
		
		System.out.println("Dados presentes no Set(conjunto): ");
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		s.close();
	}

}
