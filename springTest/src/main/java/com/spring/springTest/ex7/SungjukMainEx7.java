package com.spring.springTest.ex7;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class SungjukMainEx7 {
	public static void main(String[] args) {
		String configVar = "classpath:sungjukEx7.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(configVar);
		
		CalculatorEx7 calEx7 = ctx.getBean("calEx7",CalculatorEx7.class);
		calEx7.getCalculatorEx7();
	}
}
