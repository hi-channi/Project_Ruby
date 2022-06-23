package com.ruby.devel.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("communitycomment")
public class CommunityCommentDto {
	private String community_comment_idx;
	private String community_idx;
	private String member_idx;
	private String content;
}
