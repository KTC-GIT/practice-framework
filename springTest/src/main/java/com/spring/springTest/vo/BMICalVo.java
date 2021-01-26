package com.spring.springTest.vo;

public class BMICalVo {
	private double lowWeight;	//저체중
	private double normal;		//정상
	private double overWeight;	//과체증
	private double obesity;		//비만
	
	
	public double getLowWeight() {
		return lowWeight;
	}
	public void setLowWeight(double lowWeight) {
		this.lowWeight = lowWeight;
	}
	public double getNormal() {
		return normal;
	}
	public void setNormal(double normal) {
		this.normal = normal;
	}
	public double getOverWeight() {
		return overWeight;
	}
	public void setOverWeight(double overWeight) {
		this.overWeight = overWeight;
	}
	public double getObesity() {
		return obesity;
	}
	public void setObesity(double obesity) {
		this.obesity = obesity;
	}
	
	public void bmiCalculator(double weight, double height) {
		double h = height * 0.01;
		double result = weight / (h*h);
		
		System.out.println("BMI지수 : "+(int)result);
		
		if(result>obesity) {
			System.out.println("당신은 비만입니다.");
			System.out.println("기름기 있는 음식은 자제하시고 운동하세요..");
		}
		else if(result>overWeight) {
			System.out.println("당신은 과체중입니다.");
			System.out.println("금식하세요");
		}
		else if(result>normal) {
			System.out.println("당신은 정상입니다");
			System.out.println("계속해서 관리하세요");
		}
		else {
			System.out.println("당신은 저체중입니다");
			System.out.println("많이드세요!!");
		}
	}
}
