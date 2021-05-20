package com.stardy.service;

import com.stardy.entity.Study;
import com.stardy.util.DatabaseUtil;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StudyServiceImpl {
	

    public List<Study> getList(boolean flag, int memberId) throws SQLException {

        List<Study> list = new ArrayList<>();
        
        // 내가 가입한 스터디 목록 true , 내가 가입하지 않은 스터디 목록 false

        String sql = "";
        if(flag) {
        	sql = "SELECT * FROM STUDY S, (SELECT STUDY_ID FROM JOINED_STUDY WHERE MEMBER_ID="+memberId+") J WHERE  S.ID = J.STUDY_ID";
        }else
        	sql = "SELECT * FROM STUDY S, ((SELECT STUDY_ID FROM JOINED_STUDY GROUP BY STUDY_ID) MINUS (SELECT STUDY_ID FROM JOINED_STUDY WHERE MEMBER_ID="+memberId+" GROUP BY STUDY_ID)) J WHERE S.ID = J.STUDY_ID";
        		
        Connection con = null;
        PreparedStatement pstmt = null;

            con = DatabaseUtil.getConnection();
            pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();

            while(rs.next()) {
            	
            	int id = rs.getInt("ID");
            	String title = rs.getString("TITLE");
            	String intro = rs.getString("INTRO");
            	String open = rs.getString("OPEN");
            	String limit = rs.getString("LIMIT");
            	
            	Date regDate = rs.getDate("REGDATE");
            	Date updateDate = rs.getDate("UPDATEDATE");
            	Date dueDate = rs.getDate("DUEDATE");
            	
            	String bg = rs.getString("BG");
            	String path = rs.getString("PATH");
            	
            	int member_Id = rs.getInt("MEMBER_ID");
            	int categoryId = rs.getInt("CATEGORY_ID");
           

                Study study = new Study();
                
                study.setId(id);
                study.setTitle(title);
                study.setIntro(intro);
                study.setOpen(open);
                study.setLimit(limit);
                study.setRegDate(regDate);
                study.setUpdateDate(updateDate);
                study.setDueDate(dueDate);
                study.setBg(bg);
                study.setPath(path);
                study.setMemberId(member_Id);
                study.setCategoryId(categoryId);
                
                list.add(study);
            }


        pstmt.close();
        con.close();
        rs.close();
        return list;
    }
    
    public int getCrnt(Study study) throws SQLException {
    	
    		
		String sql = "SELECT COUNT(MEMBER_ID) CNT FROM JOINED_STUDY WHERE STUDY_ID=" + study.getId();
        Connection con = null;
        PreparedStatement pstmt = null;
        con = DatabaseUtil.getConnection();
        pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		rs.next();
		
        int cnt = rs.getInt("CNT");
        
        pstmt.close();
        con.close();
        rs.close();
    		
    	
    	return cnt;
             
    }
    
    public String getLeader(int id) throws SQLException {
		
		String sql = "SELECT NICKNAME FROM MEMBER WHERE ID=" + id;
        Connection con = null;
        PreparedStatement pstmt = null;
        con = DatabaseUtil.getConnection();
        pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		rs.next();
		
        String nickName = rs.getString("NICKNAME");
        
        pstmt.close();
        con.close();
        rs.close();
    		
    	
    	return nickName;
             
    }
    
    public boolean isLeader(int memberId, int studyId) throws SQLException {
		
  		String sql = "SELECT * FROM STUDY WHERE MEMBER_ID=" + memberId + " AND ID=" + studyId;
          Connection con = null;
          PreparedStatement pstmt = null;
          con = DatabaseUtil.getConnection();
          pstmt = con.prepareStatement(sql);
  		ResultSet rs = pstmt.executeQuery();
  		
  		boolean flag = false;
  		if(rs.next()) {
  			flag = true;
  		}
  		
          pstmt.close();
          con.close();
          rs.close();
      		
      	
      	return flag;
               
      }
    
}
	