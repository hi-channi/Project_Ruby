package com.ruby.devel.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {
	
	@GetMapping("/signup")  // 회원가입 페이지
	public String signup()
	{
		return "/member/member_addform";  // m/member/(파일명)
	}
	
	@GetMapping("/signupinfo")  // 회원가입 추가정보 페이지
	public String signup2()
	{
		return "/member/member_infoaddform";
	}
	
	@GetMapping("/findaccount")  // 계정 정보 찾기 페이지
	public String findaccount()
	{
		return "/member/member_accountfindform";
	}
	
	@GetMapping("/login")  // 로그인 페이지
	public String login()
	{
		return "/member/member_loginform";
	}
	
}
