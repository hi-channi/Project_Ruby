package com.ruby.devel.service.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ruby.devel.model.CrewEnrollDto;




@Mapper
public interface crewenrollMapper {

	public int getTotalCount();
	public void insertCrewEnroll (CrewEnrollDto dto); //크루 등록
	public void insertCrewleader (CrewEnrollDto dto); //크루 리더 등록
	public void crewleaderupdate (CrewEnrollDto dto);
	public List<CrewEnrollDto> getNewCrewDatas(); //신규 크루
	public List<CrewEnrollDto> getCrewPointDatas(); //크루 순위
	public List<CrewEnrollDto> getList(HashMap<String, Integer> map);
	public CrewEnrollDto getData(String team_idx);
	
}
