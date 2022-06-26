package com.ruby.devel.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.tiles.jsp.taglib.UseAttributeTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ruby.devel.model.MemberDto;
import com.ruby.devel.service.impl.MemberMapper;

@Controller
public class MemberController {
	
	@Autowired
	MemberMapper Mmapper;
	
	@GetMapping("/signup")  // 회원가입 페이지
	public String member_signup()
	{
		return "/member/member_addForm";  // m/member/(파일명)
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
			@RequestParam String email,
			RedirectAttributes redirectAttributes) {
		// 주소 및 우편번호 병합저장
		m_dto.setAddress(addr1+" "+addr2+" ("+zipcode+")");
		Mmapper.addMember(m_dto);
		
		System.out.println("발급된 member_idx: "+m_dto.getMember_idx());
		// 1회만 전송
		redirectAttributes.addFlashAttribute("member_idx",m_dto.getMember_idx());
		
		return "redirect:addinfo";
	}
	
	// 추가정보 입력
	@GetMapping("/addinfo")  
	public String addmemberinfo()
	{
		return "/member/member_infoAddForm";
	}
	
	// id 검증(중복확인)
	@ResponseBody
	@GetMapping("/idcheck")
	public Map<String, Integer> idCheckProcess(@RequestParam String id) {
		Map<String, Integer> map=new HashMap<>();
		int check=Mmapper.checkVaildId(id);
		map.put("vaildId", check);
	
		return map;
	}
	
	// nickname 검증(중복확인)
	@ResponseBody
	@GetMapping("/nicknamecheck")
	public Map<String, Integer> nicknameCheckProcess(@RequestParam String nickname) {
		Map<String, Integer> map=new HashMap<>();
		int check=Mmapper.checkVaildNickname(nickname);
		map.put("vaildNickname", check);
		
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
			@RequestParam (required=false, defaultValue="http://") String link
			) {
		Mmapper.addMemberInfo(m_dto);
		Mmapper.signupComplete(member_idx);
		
		return "redirect:login";
	}
	
	// 로그인 페이지
	@GetMapping("/login")  
	public String member_login()
	{
		return "/member/member_loginForm";
	}
	
	// 회원 로그인
	@PostMapping("/loginprocess")
	public String loginProc(@RequestParam(required = false) String saveid,
			@RequestParam String id,
			@RequestParam String password,
			HttpSession session,
			RedirectAttributes redirectAttributes) {
		
		HashMap<String, String> user=new HashMap<>();
		user.put("id", id);
		user.put("password", password);
		
		int check_login=Mmapper.login(user);
		int signup_complete=Mmapper.checkVaildSignup(user);
		if(check_login==1) {
			if(signup_complete==1) {
				// 로그인 세션 부여
				session.setAttribute("userID", id);
				session.setAttribute("loginOK", "yes");
				session.setAttribute("saveid", saveid); //체크안하면 null, 체크하면 on
				
				String name=Mmapper.getName(id);
				String nickname=Mmapper.getNickname(id);
				String userKey=Mmapper.getUserKey(id);
				session.setAttribute("userName", name);
				session.setAttribute("userNickname", nickname);
		        session.setAttribute("userKey", userKey);
		        
				System.out.println("Login ID: "+id);
				System.out.println("saveID?: "+saveid);
				return "redirect:main";
			} else {
 				String userKey=Mmapper.getUserKey(id);
		        redirectAttributes.addFlashAttribute("member_idx", userKey);
				return "redirect:addinfo";
			}
				
		}else {
			return "/member/member_loginFailForm";
		}
	}
	
	// 회원 로그아웃
		@GetMapping("/logout")
		public String logout(HttpSession session)
		{
			session.removeAttribute("loginOK");
			System.out.println("로그아웃이 성공적으로 수행되었습니다.");
			return "redirect:main";
		}
	
	/*
	 * 작업 해야할 것
	 * - 회원가입 페이지에서 회원 가입 이후 뒤로가기 시 중복 회원가입 되는 문제 수정(완료)
	 * - 회원 추가정보 입력 안되었을 경우 로그인 시 바로 추가정보 입력 페이지로 이동되게 수정(완료)
	 * - 비밀번호 재설정 페이지 구현
	 * - 로그인 실패 페이지 구현
	 * - 로그인 아이디 저장 구현
	 */
	
	@GetMapping("/findaccount")  // 계정 정보 찾기 페이지
	public String member_findaccount()
	{
		return "/member/member_accountFindForm";
	}
	
	@PostMapping("/findid_email")  // 이메일로 아이디 찾기
	public String findid_email(Model model,
			@RequestParam String name,
			@RequestParam String email) 
	{
		HashMap<String, String> finder=new HashMap<>();
		finder.put("name", name);
		finder.put("email", email);
		
		String finderResult=Mmapper.findIdByEmail(finder);
		model.addAttribute("finderResult", finderResult);
		
		return "/member/member_findIdResult";
	}
	
	@PostMapping("/findid_number")  // 연락처로 아이디 찾기
	public String findid_number(Model model,
			@RequestParam String name,
			@RequestParam String contact_number) 
	{
		HashMap<String, String> finder=new HashMap<>();
		finder.put("name", name);
		finder.put("contact_number", contact_number);
		
		String finderResult=Mmapper.findIdByContactNumber(finder);
		model.addAttribute("finderResult", finderResult);
		
		return "/member/member_findIdResult";
	}
	
	@GetMapping("/pwreset")  // 비밀번호 재설정 페이지
	public String member_userpwreset()
	{
		return "/member/member_userPwReset";
	}
	
	@PostMapping("/pwresetprocess")  // 비밀번호 재설정 하기
	public String pwresetprocess()
	{
		return "/member/member_accountFindForm";
	}
	
	@GetMapping("/findidresult")  // 아이디 찾기 결과 페이지
	public String member_findidresult()
	{
		return "/member/member_findIdResult";
	}
}
