package com.ruby.devel.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	@GetMapping("/signup")  // 회원가입 페이지
	public String signup()
	{
		return "/member/memberaddform";  // m/member/(파일명)
	}
	
	// 임시매핑
	@GetMapping("/signup2")  // 회원가입 추가정보 페이지
	public String signup2()
	{
		return "/member/memberinfoaddform";  // m/member/(파일명)
	}
	
	// 임시매핑
	@GetMapping("/findaccount")  // 로그인 정보 찾기 페이지
	public String findid()
	{
		return "/member/memberaccountfindform";  // m/member/(파일명)
	}
	
}
