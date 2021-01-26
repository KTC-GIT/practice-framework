package com.spring.springTest.ex4;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.spring.springTest.vo.CalculatorEx4Vo;

// xml을 통한 값의 주입
public class CalcEx4Main {
	public static void main(String[] args) {
		String configVar = "classpath:calcEx4CTX.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(configVar);
		
		CalculatorEx4Vo vo = ctx.getBean("vo",CalculatorEx4Vo.class);
		
		vo.add();
		vo.sub();
		vo.mul();
		vo.div();
	}
}
