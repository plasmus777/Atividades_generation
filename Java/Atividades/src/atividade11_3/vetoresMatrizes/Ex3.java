package atividade11_3.vetoresMatrizes;

import java.util.Scanner;

public class Ex3 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		int matriz[][] = new int[3][3];
		
		String diagP = "", diagS = "";
		int somaP = 0, somaS = 0;
		
		System.out.println("Por favor, insira os números da matriz:\n");
		
		for(int i = 0; i <3; i++) {
			for(int j = 0; j < 3; j++) {
				
				matriz[i][j] = s.nextInt();
				
				if(i == j) {
					diagP = diagP.concat(Integer.toString(matriz[i][j]) + " ");
					somaP += matriz[i][j];
				}
			}
			System.out.print("\n");
			
			diagS = diagS.concat(Integer.toString(matriz[i][2 - i]) + " ");
			somaS += matriz[i][2 - i];
		}
		
		System.out.println("Elementos da diagonal principal: ");
		System.out.print(diagP);
		
		System.out.println("\nElementos da diagonal secundária: ");
		System.out.print(diagS);
		
		System.out.println("\nSoma da diagonal principal: ");
		System.out.print(somaP);
		
		System.out.println("\nSoma da diagonal secundária: ");
		System.out.print(somaS);
		
		s.close();
	}
}
