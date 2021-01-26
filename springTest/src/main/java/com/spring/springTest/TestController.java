package com.spring.springTest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.springTest.vo.Test10Vo;

@Controller
@RequestMapping("/test")
public class TestController {
	
	@RequestMapping(value="/t1", method = RequestMethod.GET)
	public String test1Get() {
		return "test/test1";
	}
	
	@RequestMapping(value="/tt1")
	public String tt1Get() {
		return "test/test1";
	}
	
	@RequestMapping(value="/t2")
	public String t2Get(HttpServletRequest request) {
		request.setAttribute("mid", "atom");
		return "test/test2";
	}
	
	//매개값을 전달할 때는 컨트롤러에서 중괄호로('{변수}') 감싼다
	//이때 넘어온 값을 변수에 담아서 읽을 때는 @PathVariable 을 사용해서 읽어온다.
	@RequestMapping(value="/tt2/{mid}")
	public String tt2Get(HttpServletRequest request, @PathVariable String mid) {
		
		request.setAttribute("mid", mid);
		return "test/test2";
	}
	
	@RequestMapping(value="/tt2/{mid}/tt2")
	public String tt2tt2Get(HttpServletRequest request, @PathVariable String mid) {
		
		request.setAttribute("mid", mid);
		return "test/test2";
	}
	
	@RequestMapping(value="/t3/{mid}/{pw}")
	public String t3Get(HttpServletRequest request, @PathVariable String mid, @PathVariable String pw) {
		
		request.setAttribute("mid", mid);
		request.setAttribute("pw", pw);
		return "test/test3";
	}
	@RequestMapping(value="/tt3/{mid}/{pw}")
	public String tt3Get(Model model, @PathVariable String mid, @PathVariable String pw) {
		
		model.addAttribute("mid",mid);
		model.addAttribute("pw", pw);
		return "test/test3";
	}
	
	@RequestMapping(value="/t4")
	public String t4Get(Model model) {
		
		return "test/test4";
	}
	
	@RequestMapping(value="/t4Ok")
	public String t4OkGet(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		request.setAttribute("id", id);
		request.setAttribute("pw", pw);
		
		return "test/test4Ok";
	}
	@RequestMapping(value="/t4_1Ok")
	public String t4_1OkGet(HttpServletRequest request,Model model) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
//		request.setAttribute("id", id);
//		request.setAttribute("pw", pw);
		
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		
		return "test/test4_1Ok";
	}
	@RequestMapping(value="/t5")
	public String t5Get() {
		return "test/test5";
	}
	@RequestMapping(value="/t5Ok")
	public String t5OkGet(@RequestParam("id") String id,@RequestParam("pw") String pw,Model model) {
		
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		
		return "test/test5Ok";
	}
	
	@RequestMapping(value="/t6")
	public String t6Get() {
		return "test/test6";
	}
	@RequestMapping(value="/t6Ok")
	public String t6OkGet(@RequestParam("id") String id,
			@RequestParam("pw") String pw,
			@RequestParam("name") String name,
			@RequestParam("age") String age,
			@RequestParam("birthday") String birthday,
			@RequestParam("address") String address,
			Model model) {
		
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		model.addAttribute("birthday", birthday);
		model.addAttribute("address", address);
		
		return "test/test6Ok";
	}
	@RequestMapping(value="/t10")
	public String t10Get() {
		return "test/test10";
	}
	
	@RequestMapping(value="/t10Ok")
	public ModelAndView t10OkGet(Test10Vo vo) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("vo", vo);
		mv.setViewName("test/test10Ok");
		
		return mv;
	}
	@RequestMapping(value="/t11")
	public ModelAndView t11Get() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("test/test11");
		return mv;
	}
	@RequestMapping(value="/t11Ok")
	public String t11OkGet(@RequestParam("id") String id,@RequestParam("pw") String pw,Model model) {
		if(id.equals("admin") && pw.equals("1234")) {
			
		}
		
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);

		return "test/test11Ok";
	}
	
	@RequestMapping(value="/t12", method=RequestMethod.GET)
	public String t12Get() {
		return "test/test12";
	}
	
	@RequestMapping("/t14")
	public String t14Get() {
		return "test/test14";
	}
	@RequestMapping("/t15")
	public String t15Get() {
		return "redirect:/test/t14";
	}
}
