package com.ruby.devel.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GroundController {
	
	@GetMapping("/ground")  // 메뉴 선택 시 이동하는 기본 페이지
	public String extend_home()
	{
		return "/ground/main";  // ground/(파일명)
	}
	
	@GetMapping("/ground/enroll")  // 크루 등록하기
	public String enroll()
	{
		return "/ground/enroll";
	}
	
	@GetMapping("/ground/crewlist")  // 전체 크루 리스트, 순위 
	public String crewlist()
	{
		return "/ground/crewlist";
	}
	
	@GetMapping("/ground/crew")  // 내 크루 보는 
	public String crew()
	{
		return "/ground/crew";
	}
	
	
}
