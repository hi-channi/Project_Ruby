package com.ruby.devel.model;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("crewenroll")
public class CrewEnrollDto {

	private String team_idx;
	private String name;
	private String info;
	private String score;
	private String color;
	private String member_idx;
	private Timestamp create_day;
	private String team_member_idx;
	private Timestamp regist_day;
	private String accept_status;
	private String mypr;
	
	
}
