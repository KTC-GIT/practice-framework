package com.spring.springTest.ex6;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.spring.springTest.vo.SungjukEx6Vo;

public class SungjukMain {
	public static void main(String[] args) {
		String configVar = "classpath:SungjukEx6.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(configVar);
		
		SungjukEx6Vo vo = ctx.getBean("vo",SungjukEx6Vo.class);
		vo.getSungCalculator();
	}
}
