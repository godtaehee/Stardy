package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.stardy.entity.Member;
import com.stardy.util.DatabaseUtil;
import com.stardy.util.Logger;

public class MemberServiceImpl implements MemberService{
	
	Logger log = new Logger();
	
	/* 멤버 닉네임 존재하는지 여부 */
	public boolean isExistNick(String nickname) {
		
		String sql = "SELECT * FROM MEMBER WHERE NICKNAME = ?";
		boolean exist = false;
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, nickname);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				exist = true;
			}
			
			rs.close();
			ptst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return exist;
	}
	
	/* 멤버 정보 조회 */
	public Member get(int id) {

		String sql = "SELECT * FROM MEMBER WHERE ID = ?";
		Member member = null;
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setInt(1, id);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				String email = rs.getString("EMAIL");
				String nickname = rs.getString("NICKNAME");
				String password = rs.getString("PASSWORD");
				String profile = rs.getString("PROFILE");
				String path = rs.getString("PATH");
				String status = rs.getString("STATUS");
				Date regDate = rs.getDate("REGDATE");
				
				member = Member.builder()
						.email(email)
						.id(id)
						.nickname(nickname)
						.password(password)
						.profile(profile)
						.path(path)
						.regDate(regDate)
						.status(status)
						.build();
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
				int id = rs.getInt("ID");
				
				result = Member.builder().id(id).nickname(nickname).build();
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
	   
      String sql ="INSERT INTO MEMBER(EMAIL, PASSWORD, NICKNAME) values (?, ?, ?)";

      Connection con=null;
      PreparedStatement ptst = null;
      boolean flag=false;

      try {
         con = DatabaseUtil.getConnection();
         ptst = con.prepareStatement(sql);
         ptst.setString(1, user.getEmail());
         ptst.setString(2, user.getPassword());
         ptst.setString(3, user.getNickname());

         
         
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

   /* 사용자 정보 수정 */
   public void modify(Member member) {
			   
      String sql = "UPDATE MEMBER SET NICKNAME = ?, PASSWORD = ?, STATUS = ? WHERE ID = ?";

      try {
         Connection con = DatabaseUtil.getConnection();
         PreparedStatement ptst =con.prepareStatement(sql);
         
         ptst.setString(1, member.getNickname());
         ptst.setString(2, member.getPassword());
         ptst.setString(3, member.getStatus());
         ptst.setInt(4, member.getId());
         
         int result = ptst.executeUpdate();
         
         if(result > 0)
        	 log.info(member.getId() +"번 회원 : " + member.getNickname() + "님의 정보를 수정했습니다.");
         
         ptst.close();
         con.close();
      } catch (Exception e) {
         e.printStackTrace();
      }
   }

   /* 회원탈퇴 */
   public void deleteUser(int id) {
		
	   String sql = "UPDATE MEMBER SET NICKNAME = NULL, EMAIL = NULL, PASSWORD = NULL, ENABLE = 0, PROFILE = NULL, PATH = NULL WHERE ID = ?";

	      try {
	         Connection con = DatabaseUtil.getConnection();
	         PreparedStatement ptst = con.prepareStatement(sql);
	         
	         ptst.setInt(1, id);
	         
	         int result = ptst.executeUpdate();
	         
	         if(result > 0)
	        	 log.info(id + "번 회원님이 탈퇴하셨습니다.");
	         
	         ptst.close();
	         con.close();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	}
}