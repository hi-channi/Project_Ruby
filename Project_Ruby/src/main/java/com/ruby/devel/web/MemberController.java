package com.ruby.devel.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	// 회원가입 처리
	@PostMapping("/memberadd")
	public String memberadd(Model model,
			@ModelAttribute MemberDto m_dto,
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
		
		// 주소 및 우편번호 병합저장
		m_dto.setAddress(addr1+" "+addr2+" ("+zipcode+")");
		Mmapper.addMember(m_dto);
		
		System.out.println("발급된 member_idx: "+m_dto.getMember_idx());
		model.addAttribute("member_idx", m_dto.getMember_idx());
		
		return "/member/member_infoAddForm";
	}
	
	// id 검증(중복확인)
	@ResponseBody
	@GetMapping("/idcheck")
	public Map<String, Integer> idCheckProcess(@RequestParam String id) {
		Map<String, Integer> map=new HashMap<>();
		int check=Mmapper.checkVaildId(id);
		
		map.put("vaildId", check); // 해당 아이디와 일치하는 아이디 없음(0) >> vaild=0
		
		return map;
	}
	
	// nickname 검증(중복확인)
	@ResponseBody
	@GetMapping("/nicknamecheck")
	public Map<String, Integer> nicknameCheckProcess(@RequestParam String nickname) {
		Map<String, Integer> map=new HashMap<>();
		int check=Mmapper.checkVaildNickname(nickname);
		
		map.put("vaildNickname", check); // 해당 아이디와 일치하는 아이디 없음(0) >> vaild=0
		
		return map;
	}
	
	// 회원가입 추가정보
	@PostMapping("/memberinfoadd")  // 회원가입 추가정보 페이지
	public String memberinfoadd(
			@ModelAttribute MemberDto m_dto,
			@RequestParam String member_idx,
			@RequestParam String job,
			@RequestParam String age,
			@RequestParam String hobby1,
			@RequestParam (required=false, defaultValue= "") String hobby2,
			@RequestParam (required=false, defaultValue= "") String hobby3,
			@RequestParam String pr,
			@RequestParam (value="test", required=false, defaultValue="http://") String link
			) {
		Mmapper.addMemberInfo(m_dto);
		
		return "redirect:login";
	}
	
	
	@PostMapping("/loginprocess")
	public String loginProc(@RequestParam(required = false) String saveid,
			@RequestParam String id,
			@RequestParam String password,
			HttpSession session)
	{
		
		HashMap<String, String> user=new HashMap<>();
		user.put("id", id);
		user.put("password", password);
		
		int check=Mmapper.login(user);
		if(check==1) {
			//session 설정
			session.setAttribute("userID", id);
			session.setAttribute("loginOK", "yes");
			session.setAttribute("saveid", saveid); //체크안하면 null,체크하면 on
			
			System.out.println(id);
			System.out.println(saveid);
			return "redirect:main";
		}else {
			
			return "/login/passfail";
		}
	}
	
	
	
	
	// 이하 미완성 
	
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
