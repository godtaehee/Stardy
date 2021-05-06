package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.stardy.entity.Member;
import com.stardy.util.DatabaseUtil;

public class MemberService {

	public static boolean login(String email, String password) {
		
		String sql = "SELECT EMAIL, PASSWORD FROM MEMBER WHERE EMAIL = ?";
		boolean result = false;
		
		try {
			Connection con = DatabaseUtil.getConnection();
			PreparedStatement ptst = con.prepareStatement(sql);
			
			ptst.setString(1, email);
			
			ResultSet rs = ptst.executeQuery();
			
			while(rs.next()) {
				String pw = rs.getString("PASSWORD");
				if(pw.equals(password))
					result = true;
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