package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.stardy.entity.Board;
import com.stardy.util.DatabaseUtil;

public class BookmarkService {

	public void add(String email, int bid) {
				
		String sql = "INSERT INTO SUB(EMAIL, BID) VALUES(?, ?)";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, email);
			ptst.setInt(2, bid);
			
			ptst.executeUpdate();
				
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
