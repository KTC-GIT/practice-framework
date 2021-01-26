package com.spring.springTest.vo;

import com.spring.springTest.ex3.Calculator;

public class CalculatorEx3Vo {
	private int a,b;
	
	private Calculator cal = new Calculator();

	public CalculatorEx3Vo(int a, int b) {
		this.a = a;
		this.b = b;
	}
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
		cal.add(a, b);
	}
	public void sub() {
		cal.sub(a, b);
	}
	public void mul() {
		cal.mul(a, b);
	}
	public void div() {
		cal.div(a, b);
	}
	
}
