package com.ruby.devel.model;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("member")
public class MemberDto {
	private String member_idx;
	
	private String id;	// 아이디
	private String password;	// 비밀번호
	private String name;	// 이름
	private String nickname;	// 닉네임
	private String address;		// 주소
	private String birth;	// 생년월일
	private String contact_number;	// 연락처
	private String email;	// 이메일
	private Timestamp join_day;
	
	private String job;	// 직업
	private String age;	// 연령대
	private String hobby;	// 취미
	private String pr;	//
	
	// 폼이 아직 없는 항목들
	private String link;	// 웹페이지
	private String photo;	// 프로필사진
	

}