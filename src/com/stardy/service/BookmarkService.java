package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.stardy.entity.Board;
import com.stardy.util.DatabaseUtil;
import com.stardy.util.Logger;

public class BookmarkService {

	Logger log = new  Logger();
	
	/* 즐겨찾기 했는지 여부 */
	public boolean isSub(int memberId, int boardId) {
		
		boolean result = false;
		
		String sql = "SELECT MEMBER_ID FROM SUB WHERE MEMBER_ID = ? AND BOARD_ID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, memberId);
			ptst.setInt(2, boardId);
			
			ResultSet rs = ptst.executeQuery();
			if(rs.next()) {
				result = true;
				System.out.println("[" + memberId + "] 님은 이미 [" + boardId + "]번 게시글을 즐겨찾기에 추가했습니다.");
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
	public void add(int memberId, int boardId) {
				
		String sql = "INSERT INTO SUB(MEMBER_ID, BOARD_ID) VALUES(?, ?)";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, memberId);
			ptst.setInt(2, boardId);
			
			ptst.executeUpdate();
			System.out.println("[" + memberId + "] 님이 [" + boardId + "]번 게시글을 즐겨찾기에 추가했습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/* 즐겨찾기 해제 */
	public void remove(int memberId, int boardId) {

		String sql = "DELETE FROM SUB WHERE MEMBER_ID = ? AND BOARD_ID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, memberId);
			ptst.setInt(2, boardId);
			
			ptst.executeUpdate();
			System.out.println("[" + memberId + "] 님이 [" + boardId + "]번 게시글을 즐겨찾기 취소했습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/* 특정 게시글의 모든 즐겨찾기 삭제 */
	public void removeAll(int id) {
		
		String sql = "DELETE FROM SUB WHERE BOARD_ID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, id);
			
			ptst.executeUpdate();
			log.info("[" + id + "]번 게시글의 즐겨찾기가 모두 삭제되었습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/* 특정 유저의 즐겨찾기 목록 가져오는 메서드 */
	public List<Board> getSubs(int loginId) {
		
		List<Board> list = new ArrayList<>();
		
		String sql = "SELECT B.ID, B.TITLE, B.REGDATE, B.MEMBER_ID FROM BOARD B "
				+ "    LEFT JOIN SUB S ON B.ID = S.BOARD_ID "
				+ "WHERE S.MEMBER_ID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, loginId);
			
			ResultSet rs = ptst.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("ID");
				String title = rs.getString("TITLE");
				int memberId = rs.getInt("MEMBER_ID");
				Date regDate = rs.getDate("REGDATE");
				
				Board board = new Board();
				board.setId(id);
				board.setTitle(title);
				board.setMemberId(memberId);
				board.setRegDate(regDate);
				
				list.add(board);
			}
			
			log.info(loginId + "님의 즐겨찾기 목록을 조회했습니다.");
			
			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
