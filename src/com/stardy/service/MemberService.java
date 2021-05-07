package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.stardy.entity.Member;
import com.stardy.util.DatabaseUtil;

public class MemberService {
	
	public Member get(String email) {
		
		String sql = "SELECT * FROM MEMBER WHERE EMAIL = ?";
		Member member = null;
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, email);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				String nickname = rs.getString("NICKNAME");
				String profile = rs.getString("PROFILE");
				String path = rs.getString("PATH");
				String status = rs.getString("STATUS");
				Date regDate = rs.getDate("REGDATE");
				
				member = new Member(email, null, nickname, regDate, status, profile, path);
			}
			
			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return member;
	}
	
	public Member login(String email, String password) {
		
		String sql = "SELECT * FROM MEMBER WHERE EMAIL = ? AND PASSWORD = ?";
		Member result = null;
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, email);
			ptst.setString(2, password);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				
				String nickname = rs.getString("NICKNAME");
				
				result = new Member(email, password, nickname);
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
	//회원가입
   public boolean insertMember(Member user) {
	  
	   System.out.println(user);
	   
      String sql ="INSERT INTO MEMBER(NICKNAME, EMAIL, PASSWORD) values (?, ?, ?)";
      Connection con=null;
      PreparedStatement ptst = null;
      boolean flag=false;

      try {
         con = DatabaseUtil.getConnection();
         ptst =con.prepareStatement(sql);
         ptst.setString(1, user.getNickname());
         ptst.setString(2, user.getEmail());
         ptst.setString(3, user.getPassword());
         
         
         if(ptst.executeUpdate()==1)
            flag=true;
         
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         try {if(con !=null)con.close();}catch (Exception e) {e.printStackTrace();}
         try {if(ptst !=null)con.close();}catch (Exception e) {e.printStackTrace();}
      }
      return flag;
      
   }
}