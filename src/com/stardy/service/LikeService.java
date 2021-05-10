package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.stardy.entity.Like;
import com.stardy.util.DatabaseUtil;
import com.stardy.util.Logger;

public class LikeService {

	Logger log = new Logger();
	
	/* 좋아요 등록 */
	public int register(Like like) {
		
		int result = 0;
		
		String sql = "INSERT INTO LIKES(EMAIL, BID) VALUES(?, ?)";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, like.getEmail());
			ptst.setInt(2, like.getBid());
			
			result = ptst.executeUpdate();
			
			log.info(like.getEmail() + "님이 " + like.getBid() + "번 게시글을 '좋아요' 등록했습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	/* 좋아요 해제 */
	public int cancel(Like like) {
		
		int result = 0;
		
		String sql = "DELETE FROM LIKES WHERE EMAIL = ? AND BID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, like.getEmail());
			ptst.setInt(2, like.getBid());
			
			result = ptst.executeUpdate();
			
			log.info(like.getEmail() + "님이 " + like.getBid() + "번 게시글을 '좋아요' 취소했습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	/* 좋아요 개수 */
	public int count(int bid) {
		
		int result = 0;
		
		String sql = "SELECT COUNT(LID) CNT FROM LIKES GROUP BY BID HAVING BID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, bid);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next())
				result = rs.getInt("CNT");
			
			log.info(bid + "번 게시글의 좋아요 개수를 조회했습니다. : " + result + "개");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	/* 좋아요 했는지 여부 */
	public boolean isLike(Like like) {
		
		boolean result = false;
		
		String sql = "SELECT LID FROM LIKES WHERE EMAIL = ? AND BID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, like.getEmail());
			ptst.setInt(2, like.getBid());
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				result = true;
				log.info(like.getEmail() + "님은 이미 " + like.getBid() + "번 게시글을 좋아합니다.");
			}
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	/* 특정 게시글의 모든 좋아요 삭제 */
	public void removeAll(int bid) {
		
		String sql = "DELETE FROM LIKES WHERE BID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, bid);
			
			ptst.executeUpdate();
			log.info("[" + bid + "]번 게시글의 좋아요가 모두 삭제되었습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
