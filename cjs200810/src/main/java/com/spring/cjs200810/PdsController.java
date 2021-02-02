package com.spring.cjs200810;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/pds")
public class PdsController {
	
	@RequestMapping(value="/pList",method=RequestMethod.GET)
	public String pListGet(Model model) {
		return "pds/pList";
	}
}
