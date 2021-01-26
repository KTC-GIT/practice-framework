package com.spring.springTest.ex2;

import java.util.Scanner;

import com.spring.springTest.vo.CalculatorEx2Vo;

public class CalculatorEx2Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		CalculatorEx2Vo vo = new CalculatorEx2Vo();
		
		System.out.println("첫번째 수 : ");
		vo.setA(sc.nextInt());
		System.out.println("두번째 수 : ");
		vo.setB(sc.nextInt());
		
		Calculator cal = new Calculator();
		
		cal.add(vo.getA(), vo.getB());
		cal.sub(vo.getA(), vo.getB());
		cal.mul(vo.getA(), vo.getB());
		cal.div(vo.getA(), vo.getB());
		
		
	}
}
