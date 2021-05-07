package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.stardy.entity.Reply;
import com.stardy.util.DatabaseUtil;
import com.stardy.util.Logger;

public class ReplyService {

	Logger log = new Logger();
	
	/* 댓글을 등록하는 메서드 */
	public void register(Reply reply) {
		
		String sql = "INSERT INTO REPLY(CONTENT, WRITER, EMAIL, BID) VALUES(?, ?, ?, ?)";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, reply.getContent());
			ptst.setString(2, reply.getWriter());
			ptst.setString(3, reply.getEmail());
			ptst.setInt(4, reply.getBid());
			
			ptst.executeUpdate();
			log.info("[" + reply.getWriter() + "] 님이 [" + reply.getBid() + "]번 게시글에 댓글을 작성했습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/* 댓글을 삭제하는 메서드 */
	public void remove(int rid) {
		
		String sql = "DELETE FROM REPLY WHERE RID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
						
			ptst.setInt(1, rid);
			
			ptst.executeUpdate();
			log.info("[" + rid +"] 번 댓글이 삭제되었습니다.");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/* 댓글 목록을 가져오는 메서드 */
	public List<Reply> getList(int bid, int page) {
		
		List<Reply> list = new ArrayList<>();
		String sql = "SELECT * FROM ( "
				+ "    SELECT ROWNUM RN, R.* FROM ( "
				+ "        SELECT * FROM REPLY WHERE BID = ? ORDER BY RID DESC "
				+ "    ) R "
				+ ") WHERE RN > ? AND RN <= ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
						
			ptst.setInt(1, bid);
			ptst.setInt(2, page * 5);
			ptst.setInt(3, (page * 5) + 5);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				String content = rs.getString("CONTENT");
				String writer = rs.getString("WRITER");
				String email = rs.getString("EMAIL");
				Date regDate = rs.getDate("REGDATE");
				int rid = rs.getInt("RID");
				
				Reply reply = new Reply(rid, writer, email, regDate, content, bid);
				list.add(reply);
			}
			
			log.info("[" + bid +"] 번 게시글의 댓글들을 조회했습니다.");

			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	/* 댓글을 수정하는 메서드 */
	public int modify(int rid, String content) {
		
		int result = 0;
		String sql = "UPDATE REPLY SET CONTENT = ? WHERE RID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
						
			ptst.setString(1, content);
			ptst.setInt(2, rid);
			result = ptst.executeUpdate();
			
			log.info("[" + rid +"] 번 댓글을 수정했습니다.");

			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	/* 특정 댓글을 가져오는 메서드 */
	public Reply get(int rid) {
		Reply reply = null;
		
		String sql = "SELECT * FROM REPLY WHERE RID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
						
			ptst.setInt(1, rid);
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				String content = rs.getString("CONTENT");
				String writer = rs.getString("WRITER");
				String email = rs.getString("EMAIL");
				Date regDate = rs.getDate("REGDATE");
				int bid = rs.getInt("BID");
				
				reply = new Reply(rid, writer, email, regDate, content, bid);
			}
			
			log.info("[" + rid +"] 번 댓글을 조회했습니다.");
			log.info(reply.getContent());

			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return reply;
	}
	
	/* 특정 게시글의 댓글 개수를 가져오는 메서드 */
	public int count(int bid) {
		
		int result = 0;
		
		String sql = "SELECT COUNT(RID) CNT FROM REPLY GROUP BY BID HAVING BID = ?";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, bid);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next())
				result = rs.getInt("CNT");
			
			log.info(bid + "번 게시글의 댓글 개수를 조회했습니다. : " + result + "개");
			
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
}
