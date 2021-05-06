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

	static Logger log = new Logger();
	
	/* 댓글을 등록하는 메서드 */
	public void register(Reply reply) {
		
		String sql = "INSERT INTO REPLY(CONTENT, WRITER, BID) VALUES(?, ?, ?)";
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, reply.getContent());
			ptst.setString(2, reply.getWriter());
			ptst.setInt(3, reply.getBid());
			
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
	
	/* 댓글을 목록을 가져오는 메서드 */
	public List<Reply> getList(int bid, int page) {
		
		List<Reply> list = new ArrayList<>();
		String sql = "SELECT * FROM ("
				   + "SELECT ROWNUM RN, R.* FROM REPLY R WHERE BID = ? ORDER BY RID DESC"
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
				Date regDate = rs.getDate("REGDATE");
				int rid = rs.getInt("RID");
				
				Reply reply = new Reply(rid, writer, regDate, content, bid);
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
}
