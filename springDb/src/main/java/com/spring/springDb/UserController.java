package com.spring.springDb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.springDb.service.UserService;
import com.spring.springDb.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@RequestMapping(value="/userList",method=RequestMethod.GET)
	public String userListGet(Model model) {
		List<UserVo> list = userService.getUserList();
		
		model.addAttribute("list", list);
		
		return "user/userList";
	}
	
	//회원가입하기
	@RequestMapping(value="/userInput",method=RequestMethod.GET)
	public String userInputGet() {
		return "user/userInput";
	}
	
	@RequestMapping(value="/userInput",method=RequestMethod.POST)
	public String userInputPost(UserVo vo) {
		//비밀번호 암호화
		String pw = vo.getPw();
		//System.out.println("기존 비밀번호: "+pw);
		String encPw = bCryptPasswordEncoder.encode(pw);
		//System.out.println("암호화 시킨 비밀번호 : "+encPw);
		vo.setPw(encPw);
		
		userService.userInput(vo);
		
		return "home";
	}
	
	//조회
	@RequestMapping(value="/userSearch",method=RequestMethod.GET)
	public String userSearchGet() {
		return "user/userSearch";
	}
	@RequestMapping(value="/userSearch",method=RequestMethod.POST)
	public String userSearchPost(int idx,Model model) {
		 List<UserVo> list= userService.getUserSearch(idx);
		model.addAttribute("list", list);
		return "user/userList";
	}
	
	//수정
	@RequestMapping(value="/userUpdate", method=RequestMethod.GET)
	public String userUpdateGet(@RequestParam("id") String id,@RequestParam("pw") String pw,@RequestParam("idx") int idx,Model model) {
		model.addAttribute("idx", idx);
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		return "user/userUpdate";
	}
	@RequestMapping(value="/userUpdateCheck", method=RequestMethod.POST)
	public String userUpdatePost(UserVo vo,Model model) {
		userService.userUpdate(vo);
		return "redirect:/user/userList";
	}
	
	//삭제
	@RequestMapping(value="/deleteUser",method=RequestMethod.GET)
	public String deleteUserGet(@RequestParam("idx") int idx, Model model) {
		userService.deleteUser(idx);
		
		return "redirect:/user/userList";
	}
	
	
}
