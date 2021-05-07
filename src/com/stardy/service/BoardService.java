package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.stardy.entity.Board;
import com.stardy.util.DatabaseUtil;

public class BoardService {

	
	/* 다음 글 BID 가져오기 */
	public int getNext(int bid) {
		
		String sql = "SELECT BID FROM BOARD WHERE BID IN (SELECT MIN(BID) FROM BOARD WHERE BID > ?)";
		int next = -1;
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, bid);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				next = rs.getInt("BID");
			}
			
			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return next;
	}
	
	/* 이전 글 BID 가져오기 */
	public int getPrev(int bid) {
		
		String sql = "SELECT BID FROM BOARD WHERE BID IN (SELECT MAX(BID) FROM BOARD WHERE BID < ?)";
		int prev = -1;
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, bid);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				prev = rs.getInt("BID");
			}
			
			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return prev;
	}
	
	/* 게시글 조회 */
	public Board read(int bid) {
		
		Board board = null;
		
		String sql = "SELECT * FROM BOARD WHERE BID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, bid);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				String title = rs.getString("TITLE");
				String content = rs.getString("CONTENT");
				String email = rs.getString("EMAIL");
				String writer = rs.getString("WRITER");
				Date regDate = rs.getDate("REGDATE");
				Date updateDate = rs.getDate("UPDATEDATE");
				int likes = rs.getInt("LIKES");
				int sid = rs.getInt("SID");
				
				board = new Board(bid, title, content, writer, email, regDate, updateDate, likes, sid, 0);
				//파일은 추후
			}
			System.out.println(board);
			
			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return board;
	}
}

