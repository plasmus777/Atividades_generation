package atividade8_4;

import java.util.Scanner;

public class Ex3 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		
		float salarioBruto, adicionalNoturno, horasExtras, descontos, salarioLiquido;
		
		System.out.println("Salário Bruto: ");
		salarioBruto = s.nextFloat();
		
		System.out.println("Adicional Noturno: ");
		adicionalNoturno = s.nextFloat();
		
		System.out.println("Horas Extras: ");
		horasExtras = s.nextFloat();
		
		System.out.println("Descontos: ");
		descontos = s.nextFloat();
		
		salarioLiquido = salarioBruto + adicionalNoturno + (horasExtras * 5) - descontos;
		
		System.out.println("\nSalário Líquido: " + salarioLiquido);
		
		s.close();
	}
}
