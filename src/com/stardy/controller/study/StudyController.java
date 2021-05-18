package com.stardy.controller.study;

import com.stardy.entity.Member;
import com.stardy.entity.Study;
import com.stardy.util.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/study/target")
public class StudyController extends HttpServlet {


    public Study getStudy(int id) throws SQLException {
// SELECT TRUNC(DUEDATE) - TRUNC(REGDATE) FROM STUDY
        String sql = "SELECT * FROM STUDY WHERE ID=?";
        Connection con = null;
        PreparedStatement pstmt = null;

        con = DatabaseUtil.getConnection();

        pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, id);
        ResultSet rs = pstmt.executeQuery();

        Study study = new Study();
        while(rs.next()) {
        	String title = rs.getString("TITLE");
        	String intro = rs.getString("INTRO");
        	String open = rs.getString("OPEN");
        	String limit = rs.getString("LIMIT");
        	
        	Date regDate = rs.getDate("REGDATE");
        	Date updateDate = rs.getDate("UPDATEDATE");
        	Date dueDate = rs.getDate("DUEDATE");
        	
        	String bg = rs.getString("BG");
        	String path = rs.getString("PATH");
        	
        	int memberId = rs.getInt("MEMBERID");
        	int categoryId = rs.getInt("CATEGORYID");
       


            
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
        }



        pstmt.close();
        con.close();
        rs.close();
        return study;
    }

    public int getDuringTime(int id) throws SQLException {
        //
        String sql = "SELECT TRUNC(DUEDATE) - TRUNC(REGDATE) AS TIMES FROM STUDY WHERE ID=?";
        Connection con = null;
        PreparedStatement pstmt = null;

        con = DatabaseUtil.getConnection();
        pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, id);
        ResultSet rs = pstmt.executeQuery();

        int time = 0;
        while(rs.next()) {
            time = Integer.parseInt(rs.getString("TIMES"));
        }



        pstmt.close();
        con.close();
        rs.close();
        return time;
    }
    
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String title = request.getParameter("title");
		
		
		
		
		
		
		
		String limit = request.getParameter("limit");
		String open = request.getParameter("open");
		String duedate = request.getParameter("duedate");
		String intro = request.getParameter("intro");

	}
}