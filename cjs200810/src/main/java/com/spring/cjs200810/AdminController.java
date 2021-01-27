package com.spring.cjs200810;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/adMain")
	public String adMainGet() {
		return "admin/adMain";
	}
}
