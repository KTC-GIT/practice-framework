package com.spring.cjs200810;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.cjs200810.service.BoardService;
import com.spring.cjs200810.vo.BoardVo;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardService bService;
	
	@RequestMapping("/bList")
	public String bListGet(Model model) {
		List<BoardVo> list = bService.selectList();
		
		model.addAttribute("list", list);
		
		return "board/bList";
	}
	
	@RequestMapping("/bWrite")
	public String bWriteGet() {
		return "board/bWrite";
	}
	@RequestMapping(value="/bWrite",method=RequestMethod.POST)
	public String bWritePost(BoardVo vo, HttpSession session, HttpServletRequest request, Model model) throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		
		String nick = (String) session.getAttribute("nick");
		vo.setNick(nick);
		
		String ip=request.getRemoteAddr();
        
		if(ip.equalsIgnoreCase("0:0:0:0:0:0:0:1")) {
		    InetAddress inetAddress = null;
		    try {
		        inetAddress = InetAddress.getLocalHost();
		    } catch (UnknownHostException e) {}
		        ip = inetAddress.getHostAddress();
		    }
		
		vo.setHostip(ip);
		
		bService.insertBoard(vo);
		
		return "redirect:/msg/writeAlarm";
	}
	@RequestMapping("/bView/{idxStr}")
	public String bViewGet(@PathVariable String idxStr, BoardVo vo, Model model) {
		int idx = Integer.parseInt(idxStr);
		vo = bService.selectByIdx(idx);
		bService.updatePlusHits((vo.getHits()+1),idx);
		vo.setHits(vo.getHits()+1);
		
		model.addAttribute("vo", vo);
		
		return "board/bView";
	}
}
