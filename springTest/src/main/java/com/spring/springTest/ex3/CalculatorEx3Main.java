package com.spring.springTest.ex3;

import java.util.Scanner;

import com.spring.springTest.vo.CalculatorEx3Vo;

//생성자를 통한 값의 주입
public class CalculatorEx3Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int a,b;
		
		System.out.println("첫번째 수 : ");
		a = sc.nextInt();
		System.out.println("두번째 수 : ");
		b = sc.nextInt();
		
		CalculatorEx3Vo cal = new CalculatorEx3Vo(a,b);
		
		cal.add();
		cal.sub();
		cal.mul();
		cal.div();
		
		sc.close();
	}
}
