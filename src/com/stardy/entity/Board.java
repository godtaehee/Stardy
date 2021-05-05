package com.stardy.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Board {

	private int bid;
	private String title;
	private String content;
	private String writer;
	
	private Date regDate;
	private Date updateDate;
	
	private int likes;
	private int sid;
	private int files;
}
