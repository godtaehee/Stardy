package com.stardy.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Study {

	private int sid;
	private String title;
	private String leader;
	private String email;
	private String intro;
	private int category;
	private int limit;
	private int open;
	private Date dueDate;
	private Date regDate;
	private Date updateDate;
	private String bg;
	private String path;
	private int current;
	
}
