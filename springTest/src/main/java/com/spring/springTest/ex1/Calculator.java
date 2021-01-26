package com.spring.springTest.ex1;

public class Calculator {
	private int a,b;

	public int getA() {
		return a;
	}

	public void setA(int a) {
		this.a = a;
	}

	public int getB() {
		return b;
	}

	public void setB(int b) {
		this.b = b;
	}
	
	public void add() {
		System.out.println(a+" + "+b+" = "+(a+b));
	}
	public void sub() {
		System.out.println(a+" - "+b+" = "+(a-b));
	}
	public void mul() {
		System.out.println(a+" * "+b+" = "+(a*b));
	}
	public void div() {
		System.out.println(a+" / "+b+" = "+(a/b));
	}
}
