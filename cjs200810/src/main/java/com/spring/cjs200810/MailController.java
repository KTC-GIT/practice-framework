package com.spring.cjs200810;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mail")
public class MailController {
	@Autowired
	JavaMailSender mailSender;
	
	@RequestMapping(value="/mailIdForm",method=RequestMethod.GET)
	public String mailIdFormGet(String toMail, String content, Model model) throws Exception{
		String fromMail = "ktc12d@gmail.com";
		String title = "잊어버린 아이디를 보내드립니다.";
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
		
		messageHelper.setFrom(fromMail);
		messageHelper.setTo(toMail);
		messageHelper.setSubject(title);
		messageHelper.setText(content);
		
		mailSender.send(message);
		
		model.addAttribute("msg", "메일이 발송되었습니다.");
		model.addAttribute("location", "member/login");
		
		return "include/msg";
	}
	
	@RequestMapping(value="/mailPwForm",method=RequestMethod.GET)
	public String mailFormGet(String toMail, String content, Model model) throws Exception{
		String fromMail = "ktc12d@gmail.com";
		String title = "임시 비밀번호 발급";
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
		
		messageHelper.setFrom(fromMail);
		messageHelper.setTo(toMail);
		messageHelper.setSubject(title);
		messageHelper.setText(content);
		
		mailSender.send(message);
		
		model.addAttribute("msg", "메일이 발송되었습니다");
		model.addAttribute("location","member/login");
		
		return "include/msg";
	}
	
}
