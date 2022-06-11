package com.ruby.devel.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	@GetMapping("/signup")  // 회원가입 페이지
	public String extend_home()
	{
		return "/member/memberaddform";  // m/marketplace/(파일명)
	}
		
}
