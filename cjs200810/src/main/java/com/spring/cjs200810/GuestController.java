package com.spring.cjs200810;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.cjs200810.service.GuestService;
import com.spring.cjs200810.vo.GuestVo;

@Controller
@RequestMapping("/guest")
public class GuestController {
	@Autowired
	GuestService gService;
	
	@RequestMapping(value="/gList",method=RequestMethod.GET)
	public String gListGet(Model model) {
		List<GuestVo> list = gService.selectgList();
		model.addAttribute("list", list);
		
		return "guest/gList";
	}
	
	@RequestMapping(value="/gWrite",method=RequestMethod.GET)
	public String gWriteGet() {
		return "guest/gWrite";
	}
	
	
	@RequestMapping(value="/gWrite",method=RequestMethod.POST)
	public String gWritePost(GuestVo vo,HttpServletRequest request, Model model) {
		String ip=request.getRemoteAddr();
		
		if(ip.equalsIgnoreCase("0:0:0:0:0:0:0:1")) {
			InetAddress inetAddress = null;
			try {
				inetAddress = InetAddress.getLocalHost();
			} catch (UnknownHostException e) {}
			ip = inetAddress.getHostAddress();
		}
		
		vo.setHostip(ip);
		gService.insertgList(vo);
		
		List<GuestVo> list = gService.selectgList();
		model.addAttribute("list",list);
		
		return "guest/gList";
	}
	
}
