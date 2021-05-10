package com.stardy.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Like {

	private int lid;
	private int bid;
	private String email;
	
	public Like(int bid, String email) {
		this.bid = bid;
		this.email = email;
	}
	
}
