package com.stardy.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Board {

	private int id;
	private String title;
	private String content;
	private Date regDate;
	private int memberId;
	private int studyId;
	private Date updateDate;
}
