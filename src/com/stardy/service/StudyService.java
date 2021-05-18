package com.stardy.service;

import com.stardy.entity.Study;
import com.stardy.util.DatabaseUtil;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StudyService {


    public List<Study> getList() throws SQLException {

        List<Study> list = new ArrayList<>();

        String sql = "SELECT * FROM STUDY";
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
            	
            	int memberId = rs.getInt("MEMBER_ID");
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
                study.setMemberId(memberId);
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
    	
		
		String sql = "SELECT NICNAME FROM STUDY WHERE STUDY_ID=" + id;
        Connection con = null;
        PreparedStatement pstmt = null;
        con = DatabaseUtil.getConnection();
        pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		rs.next();
		
        String nickName = rs.getString("NICNAME");
        
        pstmt.close();
        con.close();
        rs.close();
    		
    	
    	return nickName;
             
    }
    
    
    
}