package com.spring.cjs200810;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.cjs200810.vo.FileVo;

@Controller
@RequestMapping("/file")
public class FileController {
	
	@RequestMapping(value="/uploadImg",method=RequestMethod.POST)
	@ResponseBody
	public FileVo uploadImgPost(HttpServletRequest request,HttpServletResponse response,MultipartHttpServletRequest multi,FileVo vo) throws Exception{
		OutputStream out = null;
		MultipartFile file = multi.getFile("upload");
		if(file!=null) {
			if(file.getSize()>0) {
				if(file.getContentType().toLowerCase().startsWith("image/")) {
					try {
						String fileName = file.getName();
						byte[] bytes = file.getBytes();
						String uploadPath = "";
					}catch(Exception e) {
						
					}
				}
			}
		}
		
		return vo;
	}
}
