package com.stardy.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Reply {
	
	private int rid;
	private String writer;
	private String email;
	private Date regDate;
	private String content;
	private int bid;
	
	public Reply(String email, String writer, String content, int bid) {
		
		this.email = email;
		this.writer = writer;
		this.content = content;
		this.bid = bid;
	}
}
