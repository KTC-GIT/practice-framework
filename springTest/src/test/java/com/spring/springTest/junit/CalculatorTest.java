package com.spring.springTest.junit;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CalculatorTest {
	
	@Test
	public void testSum() {
		Calculator cal = new Calculator();
		int res = cal.sum(10, 20);
		System.out.println("result = "+res);
		
		assertEquals(30, res);
		
	}
}
