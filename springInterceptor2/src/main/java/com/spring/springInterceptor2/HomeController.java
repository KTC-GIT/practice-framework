package com.spring.springInterceptor2;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = {"/h","/"}, method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}
	
	@RequestMapping("/member/login")
	public String loginGet() {
		return "member/login";
	}
	@RequestMapping(value="/member/login",method=RequestMethod.POST)
	public String loginPost(@RequestParam String id,HttpSession session) {
		int sLevel = 99;
		String idInitial = id.substring(0,1);
		
		if(idInitial.equals("a")) {
			sLevel = 0;
		}
		else if(idInitial.equals("b")) {
			sLevel = 1;
		}
		else if(idInitial.equals("c")) {
			sLevel = 2;
		}
		else if(idInitial.equals("d")) {
			sLevel = 3;
		}
		else {
			sLevel = 4;
		}
		
		session.setAttribute("sLevel", sLevel);
		session.setAttribute("id", id);
		
		return "home";
	}
	@RequestMapping("/member/logout")
	public String logoutGet(HttpSession session,Model model) {
		session.invalidate();
		
		model.addAttribute("msg", "로그아웃 되었습니다.");
		model.addAttribute("url", "h");
		
		return "message/msg";
	}
	@RequestMapping(value = "/member/mInput", method = RequestMethod.GET)
	public String mInputGet() {
		
		return "member/mInput";
	}
	
	@RequestMapping(value = "/board/bList", method = RequestMethod.GET)
	public String bListGet() {
		
		return "board/bList";
	}
	@RequestMapping(value = "/board/bInput", method = RequestMethod.GET)
	public String bInputGet() {
		
		return "board/bInput";
	}
	@RequestMapping(value = "/board/bUpdate", method = RequestMethod.GET)
	public String bUpdateGet() {
		
		return "board/bUpdate";
	}
	@RequestMapping(value = "/board/bDelete", method = RequestMethod.GET)
	public String bDeleteGet() {
		
		return "board/bDelete";
	}
	
	@RequestMapping(value = "/guest/gList", method = RequestMethod.GET)
	public String gListGet() {
		
		return "guest/gList";
	}
	@RequestMapping(value = "/guest/gInput", method = RequestMethod.GET)
	public String gInputGet() {
		
		return "guest/gInput";
	}
	
	@RequestMapping(value = "/pds/pList", method = RequestMethod.GET)
	public String pListGet() {
		
		return "pds/pList";
	}
	@RequestMapping(value = "/pds/pUplaod", method = RequestMethod.GET)
	public String pUploadGet() {
		
		return "pds/pUpload";
	}
	@RequestMapping(value = "/pds/pDownload", method = RequestMethod.GET)
	public String pDownloadGet() {
		
		return "pds/pDownload";
	}
	
	
	@RequestMapping("/level2Gatekeeper")
	public String level2GatekeeperGet(Model model) {
		model.addAttribute("msg", "레벨 2이상만 열람이 가능합니다.");
		model.addAttribute("url","h");
		
		return "message/msg";
	}
	
}
