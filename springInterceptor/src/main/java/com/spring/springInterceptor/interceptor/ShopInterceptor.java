package com.spring.springInterceptor.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ShopInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		System.out.println("관리자 상품등록 메뉴..");
		
		String id = request.getParameter("id")==null?"":request.getParameter("id");
		
		if(id.equals("admin")) {
			System.out.println("관리자입니다.");
		}
		else {
			System.out.println("관리자가 아닙니다. 장바구니 화면으로 갑니다.");
			response.sendRedirect(request.getContextPath()+"/shop/cart");
		}
		
		return true;
	}
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,ModelAndView modelAndView) throws Exception {
		System.out.println("쇼핑몰을 떠납니다");
	}
}
