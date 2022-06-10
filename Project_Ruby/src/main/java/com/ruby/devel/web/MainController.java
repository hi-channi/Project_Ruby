package com.ruby.devel.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("/")  // 초기 페이지
	public String home()
	{
		return "/layout/main";  ///1폴더명/2파일명
	}
	
}
