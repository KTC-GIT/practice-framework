package com.spring.cjs200810;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.cjs200810.service.MemberService;
import com.spring.cjs200810.vo.MemberVo;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	 @Autowired 
	 MemberService mService;
	 
	 @Autowired
	 BCryptPasswordEncoder passwordEncoder;
	 
	 @Autowired
	 JavaMailSender mailSender;

		@RequestMapping(value="/join",method=RequestMethod.GET)
		public String joinGet() {
			return "member/createAccount";
		}
		
		@RequestMapping(value="/join",method=RequestMethod.POST)
		public String joinPost(MemberVo vo,HttpServletRequest request) throws ServletException,IOException{
			request.setCharacterEncoding("utf-8");
			
			String email = "";
			String email1 = request.getParameter("email1");
			String email2 = request.getParameter("email2");
			email = email1+"@"+email2;
			
			String tel="";
			String tel1 = request.getParameter("tel1");
			String tel2 = request.getParameter("tel2");
			String tel3 = request.getParameter("tel3");
			tel = tel1+"-"+tel2+"-"+tel3;
			
			String address="";
			String zipCode = request.getParameter("zipCode");
			String address1 = request.getParameter("address1");
			String address2 = request.getParameter("address2");
			address = zipCode+"/"+address1+"/"+address2;
			
            //비밀번호 암호화
			String pw = vo.getPw();
			String encPw = passwordEncoder.encode(pw);
			vo.setPw(encPw);
			//암호화 끝
			
			
			vo.setEmail(email);
			vo.setTel(tel);
			vo.setAddress(address);
			
			mService.insertMember(vo);
			
			
			return "main/main";
		}
		
		@RequestMapping(value="/login",method=RequestMethod.GET)
		public String loginGet() {
			return "member/login";
		}
		@ResponseBody
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public int loginPost(@RequestParam String id, @RequestParam String pw,HttpSession session) {
			MemberVo vo = mService.selectIdPw(id);
			
			int result = 0;
			if(id.equals(vo.getId()) && passwordEncoder.matches(pw,vo.getPw())) {
				result =  1;
				session.setAttribute("id", id);
				session.setAttribute("level", vo.getLevel());
				session.setAttribute("nick", vo.getNick());
			}
			else {
				result =  0;
			}
			return result;
		}
		@RequestMapping(value="/logout",method=RequestMethod.GET)
		public String logoutGet(HttpSession session, Model model) {
			session.removeAttribute("id");
			session.removeAttribute("level");
			
			model.addAttribute("msg", "로그아웃 되었습니다");
			model.addAttribute("location", "h");
			
			return "include/msg";
		}
		
		@RequestMapping(value="/idCheck",method=RequestMethod.POST)
		@ResponseBody
		public int idCheckPost(@RequestParam String id) {
			int result = mService.countById(id);
			
			return result;
		}
		
		@RequestMapping(value="/nickCheck",method=RequestMethod.POST)
		@ResponseBody
		public int nickCheckPost(@RequestParam String nick) {
			int result = mService.countByNick(nick);
			
			return result;
		}
		@RequestMapping(value="/find",method=RequestMethod.GET)
		public String findGet() {
			return "member/findAccount";
		}
		
		@RequestMapping(value="/find",method=RequestMethod.POST)
		public String findPost(@RequestParam String sw, @RequestParam String id,@RequestParam String email,Model model,RedirectAttributes redirectAttr) {
			MemberVo vo = new MemberVo();
			String pw = "";
			if(sw.equals("0")) {			//아이디 찾기
				vo = mService.selectByEmail(email);
				if(vo!=null) {
					redirectAttr.addAttribute("toMail", email);
					redirectAttr.addAttribute("content", vo.getId());
					
					return "redirect:/mail/mailIdForm";
					
				}
				else {
					String msg = "유효하지 않은 메일주소입니다.";
					String location = "member/find";
					model.addAttribute("msg", msg);
					model.addAttribute("location", location);
					
					return "include/msg";
				}
			}
			else if(sw.equals("1")) {		//비밀번호 찾기
				vo = mService.selectByIdEmail(id,email);
				
				if(vo!=null) {
					UUID uuid = UUID.randomUUID();
					pw = uuid.toString().substring(0,6);
					mService.updateTempPw(id,passwordEncoder.encode(pw));
					
					redirectAttr.addAttribute("toMail", email);
					redirectAttr.addAttribute("content", pw);
					
					return "redirect:/mail/mailPwForm";
					
				}
				else {
					String msg = "유효하지 않은 아이디나 메일주소입니다.";
					String location = "member/find";
					model.addAttribute("msg", msg);
					model.addAttribute("location", location);
					
					return "include/msg";
				}
			}
			return "";
		}
		@RequestMapping(value="/mypage",method=RequestMethod.GET)
		public String mypageGet(Model model,HttpSession session) throws Exception{
			String id = (String)session.getAttribute("id");
			MemberVo vo = mService.selectById(id);
			
			String emailArr[] = vo.getEmail().split("@");
			String email1 = emailArr[0];
			String email2 = emailArr[1];
			
			String telArr[] = vo.getTel().split("-");
			String tel1 = telArr[0];
			String tel2 = telArr[1];
			String tel3 = telArr[2];
			
			String addressArr[] = vo.getAddress().split("/");
			String zipCode = addressArr[0];
			String address1 = addressArr[1];
			String address2 = addressArr[2];
			
			model.addAttribute("vo", vo);
			model.addAttribute("email1", email1);
			model.addAttribute("email2", email2);
			model.addAttribute("tel1", tel1);
			model.addAttribute("tel2", tel2);
			model.addAttribute("tel3", tel3);
			model.addAttribute("zipCode", zipCode);
			model.addAttribute("address1", address1);
			model.addAttribute("address2", address2);
			
			return "member/mypage";
		}
		@RequestMapping(value="/mypage",method=RequestMethod.POST)
		public String mypagePost(MemberVo vo,Model model,HttpSession session,HttpServletRequest request) {
			String id = (String)session.getAttribute("id");
			
			String email = "";
			String email1 = request.getParameter("email1");
			String email2 = request.getParameter("email2");
			email = email1+"@"+email2;
			
			String tel="";
			String tel1 = request.getParameter("tel1");
			String tel2 = request.getParameter("tel2");
			String tel3 = request.getParameter("tel3");
			tel = tel1+"-"+tel2+"-"+tel3;
			
			String address="";
			String zipCode = request.getParameter("zipCode");
			String address1 = request.getParameter("address1");
			String address2 = request.getParameter("address2");
			address = zipCode+"/"+address1+"/"+address2;
			
            //비밀번호 암호화
			String pw = vo.getPw();
			String encPw = passwordEncoder.encode(pw);
			vo.setPw(encPw);
			//암호화 끝
			
			
			vo.setEmail(email);
			vo.setTel(tel);
			vo.setAddress(address);
			
			
			mService.updateMember(vo,id);
			
			model.addAttribute("msg", "수정되었습니다");
			model.addAttribute("location", "h");
			
			return "include/msg";
		}
		
}
	 

