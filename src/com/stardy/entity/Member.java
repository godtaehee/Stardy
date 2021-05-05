package com.stardy.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Member {

	private String email;
	private String password;
	private String nickname;
	private Date regDate;
	private String status;
	private String profile;
	private String path;
	
	public Member(String email, String password, String nickname) {
		this.email = email;
		this.password = password;
		this.nickname = nickname;
	}
}
