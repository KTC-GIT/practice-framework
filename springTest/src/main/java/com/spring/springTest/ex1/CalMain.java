package com.spring.springTest.ex1;

//setter를 이용한 값의 주입
public class CalMain {
	public static void main(String[] args) {
		Calculator cal = new Calculator();
		
		cal.setA(100);
		cal.setB(200);
		
		cal.add();
		cal.sub();
		cal.mul();
		cal.div();
	}
}
