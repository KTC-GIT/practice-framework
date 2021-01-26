package com.spring.springInterceptor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class ShopController {
	@RequestMapping("/productInput")
	public String productInputGet() {
		System.out.println("상품등록 화면");
		
		return "shop/productInput";
	}
	@RequestMapping("/cart")
	public String cartGet() {
		System.out.println("장바구니 화면");
		
		return "shop/cart";
	}
}
