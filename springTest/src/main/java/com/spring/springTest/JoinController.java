package com.spring.springTest;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.springTest.vo.JoinVo;

@Controller
@RequestMapping("/join")
public class JoinController {
	
	@RequestMapping(value = "/joinForm",method=RequestMethod.POST)
	public String joinFormPost(@Validated JoinVo vo,BindingResult bindingResult, Model model) {
		System.out.println("=====================");
		System.out.println("아이디: "+vo.getId());
		System.out.println("비밀번호: "+vo.getPw());
		System.out.println("나이: "+vo.getAge());
		System.out.println("error여부: "+bindingResult.hasErrors());		//에러가 있으면 true
		System.out.println("=====================");
		
		if(bindingResult.hasErrors()) {
			List<ObjectError> list = bindingResult.getAllErrors();
			for(ObjectError e : list) {
				System.out.println("에러: "+e.getDefaultMessage());
			}
			return "redirect:/join/joinForm";
		}
		
		model.addAttribute("vo", vo);
		return "join/joinOk";
	}
	
	@RequestMapping(value="/joinForm",method=RequestMethod.GET)
	public String joinFormGet() {
		
		return "join/joinForm";
	}
	
	
	
}
