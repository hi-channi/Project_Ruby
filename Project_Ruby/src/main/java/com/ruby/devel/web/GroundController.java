package com.ruby.devel.web;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ruby.devel.model.CrewEnrollDto;
import com.ruby.devel.service.impl.crewenrollMapper;

@Controller
public class GroundController {

	@Autowired
	crewenrollMapper Cmapper;

	@GetMapping("/ground") // 메뉴 선택 시 이동하는 기본 페이지
	public String ground_home(Model model, @RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {
		ModelAndView mview = new ModelAndView();

		int totalCount = Cmapper.getTotalCount();

		// 페이징처리에 필요한 변수
		int totalPage; // 총 페이지수
		int startPage; // 각블럭의 시작페이지
		int endPage; // 각블럭의 끝페이지
		int start; // 각페이지의 시작번호
		int perPage = 5; // 한페이지에 보여질 글 갯수
		int perBlock = 5; // 한블럭당 보여지는 페이지 개수

		// 총페이지 개수구하기
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

		// 각블럭의 시작페이지
		// 예:현재페이지가 3인경우 startpage=1,endpage= 5
		// 현재페이지가 6인경우 startpage=6,endpage= 10
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		// 만약 총페이지가 8 -2번째블럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
		if (endPage > totalPage)
			endPage = totalPage;

		// 각페이지에서 불러올 시작번호
		start = (currentPage - 1) * perPage;

		// service 안 넣을 경우
		// 데이타 가져오기..map처리
		HashMap<String, Integer> map = new HashMap<>();
		map.put("startPage", startPage);
		map.put("perPage", perPage);

		// 각페이지에서 필요한 게시글 가져오기
		List<CrewEnrollDto> list = Cmapper.getList(map);


		// 출력에 필요한 변수들을 request 에 저장
		mview.addObject("list", list);
		mview.addObject("startPage", startPage);
		mview.addObject("endPage", endPage);
		mview.addObject("totalPage", totalPage);
		mview.addObject("totalCount", totalCount);
		
		mview.addObject("currentPage", currentPage);
		mview.addObject("totalCount", totalCount);

		List<CrewEnrollDto> newlist = Cmapper.getNewCrewDatas();
		List<CrewEnrollDto> pointlist = Cmapper.getCrewPointDatas();
		model.addAttribute("newlist", newlist);
		model.addAttribute("pointlist", pointlist);
		
		//System.out.println(newlist);
		System.out.println(list);
		mview.setViewName("/ground/ground_main");

		return "/ground/ground_main"; // /ground/(파일명)
	}

	@GetMapping("/ground/crewenroll") // 크루 등록 페이지
	public String ground_crewenroll() {
		return "/ground/ground_crewEnrollForm";
	}

	@GetMapping("/ground/mycrew") // 나의 크루 페이지
	public String ground_mycrew() {
		return "/ground/ground_myCrew";
	}

	@PostMapping("/ground/crewinsert") // 크루 등록
	public String insert(@ModelAttribute CrewEnrollDto dto) {
		Cmapper.insertCrewEnroll(dto);

		return "redirect:/ground";
	}

}
