package com.spring.springTest.vo;

import com.spring.springTest.ex6.CalculatorEx6;

public class SungjukEx6Vo {
	private String name;
	private int kor;
	private int eng;
	private CalculatorEx6 calculatorEx6;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public CalculatorEx6 getCalculatorEx6() {
		return calculatorEx6;
	}
	
	public void setCalculatorEx6(CalculatorEx6 calculatorEx6) {
		this.calculatorEx6 = calculatorEx6;
	}
	public void getSungCalculator() {
		calculatorEx6.getSungCalculator(name, kor, eng);
	}
}
