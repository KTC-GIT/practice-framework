package com.spring.springTest.ex8;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ActorMain {
	public static void main(String[] args) {
		String configVar = "classpath:actorCTX.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(configVar);
		
		Actor doctor = ctx.getBean("doctor",Actor.class);
		doctor.casting();
		System.out.println("============================");
		
		Actor fireFighter = ctx.getBean("firefighter",Actor.class);
		fireFighter.casting();
		System.out.println("============================");
		
		Actor policeman = ctx.getBean("policeman",Actor.class);
		policeman.casting();
		System.out.println("============================");
	}
}
