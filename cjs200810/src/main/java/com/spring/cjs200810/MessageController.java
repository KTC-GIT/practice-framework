package com.spring.cjs200810;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/msg")
public class MessageController {
	@RequestMapping(value="/{msgFlag}",method=RequestMethod.GET)
	public String msgFlagGet(@PathVariable String msgFlag,Model model) {
		
		if(msgFlag.equals("level0Gatekeeper")) {
			model.addAttribute("msg", "관리자만 사용가능합니다.");
			model.addAttribute("url", "h");
		}
		else if(msgFlag.equals("level2Gatekeeper")) {
			model.addAttribute("msg", "우수회원만 사용가능합니다.");
			model.addAttribute("url", "h");
		}
		else if(msgFlag.equals("level3Gatekeeper")) {
			model.addAttribute("msg", "정회원만 사용가능합니다.");
			model.addAttribute("url", "h");
		}
		
		return "include/msg";
	}
}
