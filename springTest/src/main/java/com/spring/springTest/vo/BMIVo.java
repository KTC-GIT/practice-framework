package com.spring.springTest.vo;

public class BMIVo {
	private String name;
	private double height;
	private double weight;
	private BMICalVo bmiCalVo;	//비만도 계산 클래스
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public BMICalVo getBmiCalVo() {
		return bmiCalVo;
	}
	public void setBmiCalVo(BMICalVo bmiCalVo) {
		this.bmiCalVo = bmiCalVo;
	}
	
	
}
