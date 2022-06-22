package com.ruby.devel.web;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ruby.devel.model.CrewEnrollDto;
import com.ruby.devel.service.impl.crewenrollMapper;



@Controller
public class GroundController {
	
	@Autowired
	crewenrollMapper Cmapper;

	@GetMapping("/ground") // 메뉴 선택 시 이동하는 기본 페이지
	public String ground_home(Model model) {
		List<CrewEnrollDto> list = Cmapper.getNewCrewDatas();
		List<CrewEnrollDto> pointlist = Cmapper.getCrewPointDatas();
		model.addAttribute("list", list);
		model.addAttribute("pointlist", pointlist);
		
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

	@PostMapping("/ground/crewinsert") //크루 등록
	public String insert(@ModelAttribute CrewEnrollDto dto) {
		Cmapper.insertCrewEnroll(dto);
		
		return "redirect:/ground";
	}

}
