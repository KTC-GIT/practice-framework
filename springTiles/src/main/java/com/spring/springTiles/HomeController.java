package com.spring.springTiles;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/h","/login","login/login"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "login/login";
	}
	
	@RequestMapping(value="login/login",method=RequestMethod.GET)
	public String loginGet() {
		return "login/login";
	}
	@RequestMapping(value="main/main",method=RequestMethod.POST)
	public ModelAndView mainGet(ModelAndView mv,@RequestParam("id") String id,@RequestParam("pw") String pw) {
		mv.addObject("id", id);
		mv.addObject("pw", pw);
		mv.setViewName("main/main");
		
		return mv;
	}
	@RequestMapping("board/main")
	public ModelAndView boardMainGet(ModelAndView mv) {
		mv.setViewName("board/main");
		
		return mv;
	}
	@RequestMapping("pds/main")
	public ModelAndView pdsMainGet(ModelAndView mv) {
		mv.setViewName("pds/main");
		
		return mv;
	}
	@RequestMapping("manage/admin")
	public ModelAndView manageAdminGet(ModelAndView mv) {
		mv.setViewName("manage/admin");
		
		return mv;
	}
	
}
