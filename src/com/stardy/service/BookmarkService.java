package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.stardy.entity.Board;
import com.stardy.util.DatabaseUtil;

public class BookmarkService {

	/* 즐겨찾기 했는지 여부 */
	public boolean isSub(String email, int bid) {
		
		boolean result = false;
		
		String sql = "SELECT IDX FROM SUB WHERE EMAIL = ? AND BID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, email);
			ptst.setInt(2, bid);
			
			ResultSet rs = ptst.executeQuery();
			if(rs.next()) {
				result = true;
				System.out.println("[" + email + "] 님은 이미 [" + bid + "]번 게시글을 즐겨찾기에 추가했습니다.");
			}
			
			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	/* 즐겨찾기 등록 */
	public void add(String email, int bid) {
				
		String sql = "INSERT INTO SUB(EMAIL, BID) VALUES(?, ?)";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, email);
			ptst.setInt(2, bid);
			
			ptst.executeUpdate();
			System.out.println("[" + email + "] 님이 [" + bid + "]번 게시글을 즐겨찾기에 추가했습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/* 즐겨찾기 해제 */
	public void remove(String email, int bid) {

		String sql = "DELETE FROM SUB WHERE EMAIL = ? AND BID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, email);
			ptst.setInt(2, bid);
			
			ptst.executeUpdate();
			System.out.println("[" + email + "] 님이 [" + bid + "]번 게시글을 즐겨찾기 취소했습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
