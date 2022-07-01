package com.ruby.devel.service.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ruby.devel.model.TeamEnrollDto;
import com.ruby.devel.model.TeamMemberDto;
import com.ruby.devel.model.MemberDto;




@Mapper
public interface TeamMapper {

	public int getTotalCount();
	public void insertCrewEnroll (TeamEnrollDto dto); //크루 등록
	public void updateTeamIdx(HashMap <String, String> map);
	public void insertCrewleader (TeamMemberDto cm_dto); //크루 리더 등록
	public void crewleaderupdate (TeamEnrollDto dto);
	public List<TeamEnrollDto> getNewCrewDatas(); //신규 크루
	public List<TeamEnrollDto> getCrewPointDatas(); //크루 순위
	public List<TeamEnrollDto> getList(HashMap<String, Integer> map);
	public TeamEnrollDto getData(String team_idx);
	public TeamEnrollDto getTeamInfo (String team_idx);
	public List<TeamMemberDto> getTeamMember (String team_idx);
	public String selectTeamIdx(String member_idx);
	public void insertIntoMyCrew (TeamMemberDto cm_dto);
	public List<TeamMemberDto> crewApplyList (String team_idx);
	public void crewMemberAccept (String member_idx);
	public void crewMemberReject (String member_idx);
	public int selectCrewMem (String team_idx);
	public void updateTeamidxY(String member_idx);

}

