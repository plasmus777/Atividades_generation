package atividade8_4;

import java.util.Scanner;

//Calcula o novo salário com base no salário e abono inseridos.
public class Ex1 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		float salario, abono, novoSalario;
		
		System.out.println("Salário: ");
		salario = s.nextFloat();
		
		System.out.println("Abono: ");
		abono = s.nextFloat();
		
		novoSalario = salario + abono;
		
		System.out.println("Novo Salário: " + novoSalario);
		
		s.close();
	}
	
}
