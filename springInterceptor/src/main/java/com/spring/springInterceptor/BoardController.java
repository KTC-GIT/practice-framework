package com.spring.springInterceptor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@RequestMapping("/bList")
	public String bListGet() {
		System.out.println("board controller");
		return "board/bList";
	}
}
