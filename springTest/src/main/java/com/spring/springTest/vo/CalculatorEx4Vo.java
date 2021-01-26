package com.spring.springTest.vo;

import com.spring.springTest.ex3.Calculator;

public class CalculatorEx4Vo {
	private int a,b;
	
	private Calculator cal = new Calculator();

	
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
	
	public void setCal(Calculator cal) {
		this.cal = cal;
	}
	public Calculator getCal() {
		return cal;
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
