package com.spring.springInterceptor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pds")
public class PdsController {
	
	@RequestMapping("/pList")
	public String pListGet() {
		System.out.println("pList controller");
		return "pds/pList";
	}
}
