package com.spring.springTest.junit;


import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CalculatorTest2 {
	
	@Test
	public void divTest() {
		Calculator2 cal2 = new Calculator2();
		
		int res = cal2.div(10, 5);
		System.out.println("res = "+res);
		assertEquals(2,res);
	}
}
