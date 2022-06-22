package com.ruby.devel.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("crewenroll")
public class CrewEnrollDto {

	private String team_idx;
	private String name;
	private String info;
	private String score;
	private String create_day;
	
	
}
