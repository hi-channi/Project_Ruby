package com.ruby.devel.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ruby.devel.model.CommunityDto;
import com.ruby.devel.service.impl.CommunityMapper;

@Controller
public class CommunityController {
	
	@Autowired
	CommunityMapper Cmapper;
	
	@GetMapping("/community")  // 메뉴 선택 시 이동하는 기본 페이지
	public ModelAndView main(
			@RequestParam (value = "currentPage",defaultValue = "1") int currentPage) 
	{
		
		ModelAndView mview=new ModelAndView();
		int totalCount=Cmapper.getTotalCount(); //총 글의 수
		List<CommunityDto> list=Cmapper.getAllDatas(); //리스트 출력
		
		//글번호 설정
		int no=totalCount;	
		
		mview.addObject("totalCount", totalCount);
		mview.addObject("list", list);
		mview.addObject("no", no);
		
		mview.setViewName("/community/community_main");
		
		return mview;
	}
	
	
	//insert
	@PostMapping("/community/insert")
	public String insert(@ModelAttribute CommunityDto c_dto, 
			@RequestParam ArrayList<MultipartFile> upload, 
			HttpSession session ) {
		
		//업로드 경로
		String path=session.getServletContext().getRealPath("/communityimage");	
		System.out.println(path); //경로 확인
		
		//임시
		
		c_dto.setContent_type(path);
		
		//포토명 구해서 넣기
		String communityimage="";
		
		//첫번째가 빈 문자열이면
		if(upload.get(0).getOriginalFilename().equals("")) {
			communityimage="no";
		}else {
			for(MultipartFile f:upload) {
				String fName=f.getOriginalFilename();
				communityimage +=fName+",";
				
				try {
					f.transferTo(new File(path+"\\"+fName));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			communityimage=communityimage.substring(0, communityimage.length()-1);
			
		}
		
		c_dto.setPhoto(communityimage);
		
		//insert
		Cmapper.insertCommunity(c_dto);
		
		return "redirect:";
	}

	@GetMapping("/community/contentdetail")  // 일반글 상세 페이지
	public ModelAndView community_contentdetail(@RequestParam String community_idx, @RequestParam (required = false) String key)
	{
		ModelAndView mview =new ModelAndView();
		List<CommunityDto> list= Cmapper.getAllDatas();
		
		//조회수 증가
		if(key!=null) {
		Cmapper.updateReadCount(community_idx);}
		
		
		//idx에 해당 dto 얻기
		CommunityDto c_dto= Cmapper.getData(community_idx);
		
		mview.addObject("c_dto", c_dto);
		mview.addObject("list", list);
		
		
		
		//포워드 
		mview.setViewName("/community/community_contentDetail");
		
		return mview;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping("/community/contentadd")  // 글쓰기 페이지
	public String community_contentadd()
	{
		return "/community/community_contentAddForm";
	}
	
	@GetMapping("/community/contentdetail_logout")  // 일반글 상세보기(로그아웃) [임시]
	public String community_contentdetail_logout()
	{
		return "/community/community_contentDetail_logout";
	}
	
	@GetMapping("/community/qnadetail")  // Q&A글 상세 페이지
	public String community_qnadetail()
	{
		return "/community/community_qnaDetail";
	}

}
