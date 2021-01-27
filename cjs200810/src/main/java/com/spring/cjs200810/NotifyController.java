package com.spring.cjs200810;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.cjs200810.service.NotifyService;
import com.spring.cjs200810.vo.NotifyVo;

@Controller
@RequestMapping("/notify")
public class NotifyController {
	
	@Autowired
	NotifyService nService;
	
	@RequestMapping("/notiList")
	public String notiListGet(Model model) {
		
		List<NotifyVo> list = nService.selectList();
		
		model.addAttribute("list", list);
		
		return "admin/notiList";
	}
}
