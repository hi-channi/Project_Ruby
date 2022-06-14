package com.ruby.devel.service.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ruby.devel.model.MemberDto;


@Mapper
public interface MemberMapper {

	public void insertMember(MemberDto dto);
	
	public List<MemberDto> getAllDatas();
	
	// id 중복체크
	public int checkVaildId(String id); 
	
	public void deleteMember(String num);
	
	// id로 이름 가져오기
	public String getName(String id);
	
	// 로그인
	public int login(HashMap<String, String> map);
}
