package com.ruby.devel.service.impl;
import org.apache.ibatis.annotations.Mapper;

import com.ruby.devel.model.MemberDto;


@Mapper
public interface MemberMapper {

	// 회원가입
	public void addMember(MemberDto m_dto);
	
	// 아이디 중복체크
	public int checkVaildId(String id); 
	
	// 테스트 중
	public int memberThrow(String id);

}
