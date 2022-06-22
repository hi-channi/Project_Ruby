package com.ruby.devel.service.impl;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.ruby.devel.model.MemberDto;


@Mapper
public interface MemberMapper {

	// 회원가입
	public void addMember(MemberDto m_dto);
	
	// 아이디 중복체크
	public int checkVaildId(String id);
	
	// 닉네임 중복체크
	public int checkVaildNickname(String nickname); 
	
	// 회원가입 추가정보 
	public int addMemberInfo(MemberDto m_dto);

	// 로그인 
	public int login(HashMap<String, String> user);
}
