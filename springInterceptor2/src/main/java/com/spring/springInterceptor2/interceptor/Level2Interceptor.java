package com.spring.springInterceptor2.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Level2Interceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		int sLevel = session.getAttribute("sLevel")==null?99:(int)session.getAttribute("sLevel");
		
		if(sLevel>2) {
			RequestDispatcher rd = request.getRequestDispatcher("/level2Gatekeeper");
			rd.forward(request, response);
		}
		
		
		return true;
	}
}
