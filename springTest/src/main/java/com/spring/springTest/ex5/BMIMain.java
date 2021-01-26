package com.spring.springTest.ex5;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.spring.springTest.vo.BMICalVo;
import com.spring.springTest.vo.BMIVo;

public class BMIMain {
	public static void main(String[] args) {
		String configVar = "classpath:bmiCTX.xml";
		
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(configVar);
		
		BMICalVo bmiCalVo = ctx.getBean("bmiCalVo", BMICalVo.class);
		BMIVo vo = ctx.getBean("vo",BMIVo.class);
		
		System.out.println(vo.getName());
		bmiCalVo.bmiCalculator(vo.getWeight(), vo.getHeight());
	}
}
