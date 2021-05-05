package com.stardy.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Reply {

	private int rid;
	private String writer;
	private Date regDate;
	private String content;
	private int bid;
}
