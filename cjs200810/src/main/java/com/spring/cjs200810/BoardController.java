package com.spring.cjs200810;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.cjs200810.service.BoardService;
import com.spring.cjs200810.vo.BoardVo;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardService bService;
	
	@RequestMapping("/bList")
	public String bListGet(Model model) {
		return "board/bList";
	}
	
	@RequestMapping("/bWrite")
	public String bWriteGet() {
		return "board/bWrite";
	}
	
	public String bWritePost(BoardVo vo) {
		return "board/bList";
	}
}
