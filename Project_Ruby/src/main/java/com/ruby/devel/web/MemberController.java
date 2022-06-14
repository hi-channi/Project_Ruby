package com.ruby.devel.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ruby.devel.model.MemberDto;
import com.ruby.devel.service.impl.MemberMapper;

@Controller
public class MemberController {
	
	@Autowired
	MemberMapper Mmapper;
	
	@GetMapping("/signup")  // 회원가입 페이지
	public String signup()
	{
		return "/member/member_addform";  // m/member/(파일명)
	}
	
	@PostMapping("/memberadd")
	public String memberadd(@ModelAttribute MemberDto m_dto,
			@RequestParam String id,
			@RequestParam String password,
			@RequestParam String name,
			@RequestParam String nickname,
			@RequestParam String addr1,
			@RequestParam String addr2,
			@RequestParam String zipcode,
			@RequestParam String birth,
			@RequestParam String contact_number,
			@RequestParam String email
			
			) {
		
		// 주소 합쳐서 저장
		m_dto.setAddress(addr1+" "+addr2+" ("+zipcode+")");
		Mmapper.addMember(m_dto);
		
		return "/member/member_infoaddform";
	}
	
	// 테스트 중
	@GetMapping("/member_infoaddform")
	public ModelAndView memberkeythrow(@ModelAttribute MemberDto m_dto,
			@RequestParam String id) {
		System.out.println("가져온 아이디: "+id);
		int member_idx=Mmapper.memberThrow(id);
		ModelAndView mview=new ModelAndView();
		mview.addObject("member_idx", member_idx);
		
		mview.setViewName("foward:/member/member_infoaddform");
		return mview;
	}
	
	
	// id 검증
	@ResponseBody	// @RestController 면 생략 가능(json 형태로 반환 > ajax 이용 시 )
	@GetMapping("/idcheck")
	public Map<String, Integer> idCheckProcess(@RequestParam String id) {
		Map<String, Integer> map=new HashMap<>();
		int check=Mmapper.checkVaildId(id);
		
		map.put("vaild", check); // 해당 아이디와 일치하는 아이디 없음(0) >> vaild=0
		
		return map;
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
	
	@GetMapping("/findidresult")  // 아이디 찾기 결과 페이지
	public String findidresult()
	{
		return "/member/member_findidresult";
	}
	
	@GetMapping("/pwreset")  // 비밀번호 재설정 페이지
	public String userpwreset()
	{
		return "/member/member_userpwreset";
	}
}
