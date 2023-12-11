package atividade11_3.vetoresMatrizes;

import java.util.Arrays;
import java.util.Scanner;

public class Ex1 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int vetor[] = {2, 5, 1, 3, 4, 9, 7, 8, 10, 6};
		int num;
		
		System.out.println("Vetor:");
		for(int i: vetor) {
			System.out.print("[" + i + "] ");
		}
		
		Arrays.sort(vetor);
		
		System.out.println("\nVetor ordenado:");
		for(int i: vetor) {
			System.out.print("[" + i + "] ");
		}
		
		System.out.println("\nDigite o número que você deseja encontrar: ");
		num = s.nextInt();
		
		int indice =Arrays.binarySearch(vetor, num);
		
		if(indice >= 0){
			System.out.println("O número " + num + " foi encontrado no vetor, presente no índice " + indice + ".");
		} else {
			System.out.println("O número " + num + " não foi encontrado no vetor.");
		}
		
		s.close();
	}
}
