package com.ruby.devel.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MarketplaceController {
	
	@GetMapping("/marketplace")  // 메뉴 선택 시 이동하는 기본 페이지
	public String extend_home()
	{
		return "m/marketplace/main";  // m/marketplace/(파일명)
	}
	
	@GetMapping("/productadd") // 상품등록 페이지
	public String upload() {
		
		return "/marketplace/market_productaddform";
	}
	
	@GetMapping("/productdetail")
	public String detail() {
		return "/marketplace/market_productdetail";
	}
	
}
