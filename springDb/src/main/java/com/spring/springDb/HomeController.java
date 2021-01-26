package com.spring.springDb;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.springDb.service.UserService;
import com.spring.springDb.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	UserService userService;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/h", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="/h", method=RequestMethod.POST)
	public String homePost(UserVo vo) {
		UserVo uVo = new UserVo();
		uVo = userService.getPw(vo.getId());
		
		// 새로 입력받은 비밀번호를 다시 암호화 시켜서 기존 비밀번호와 비교한다.
		if(uVo!=null && uVo.getId().equals(vo.getId()) && bCryptPasswordEncoder.matches(vo.getPw(), uVo.getPw())) {
				System.out.println("회원인증 ok");
				return "user/userMenu";
		}
		else {
			System.out.println("회원없음");
			return "home";
		}
	}
}
