package com.ruby.devel.model;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("teamenroll")
public class TeamDto {

	private String team_idx;
	private String name;
	private String info;
	private String score;
	private String color;
	private String member_idx;
	private Timestamp create_day;
	private int member_count;
	
	
}
