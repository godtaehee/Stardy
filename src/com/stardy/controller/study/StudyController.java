package com.stardy.controller.study;

import com.stardy.entity.Category;
import com.stardy.entity.Member;
import com.stardy.entity.Study;
import com.stardy.util.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.text.SimpleDateFormat;
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
        	
        	int memberId = rs.getInt("MEMBER_ID");
        	int categoryId = rs.getInt("CATEGORY_ID");
       


            
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
		// TODO Auto-generated method stub"
		
		request.setCharacterEncoding("utf-8");
		
		System.out.println(request.getParameter("open"));
		
		String title = request.getParameter("title");
		int memberId = Integer.parseInt(request.getParameter("memberId"));
		String category_str = request.getParameter("category");
		int category = Category.valueOf(category_str).ordinal();
		int limit = Integer.parseInt(request.getParameter("limit")); 
		int open = 0;
		if(request.getParameter("open") == null)
			open = 0;
		else
			open = 1;
//		int open = Integer.parseInt(request.getParameter("open"));
		
		
	
		Date date_now = new Date(System.currentTimeMillis());
		
		SimpleDateFormat format_now =  new SimpleDateFormat("yyyy/MM/ddHHmmss");
		System.out.println();
		

		
		String format_str = format_now.format(date_now);
		

		
		String path = "../upload/" + format_str.substring(0,4) + "/" + format_str.substring(4,6) + "/" + format_str.substring(6,8) + "/" + format_str.substring(8,10) + "/" + format_str.substring(10,12)+"/" + format_str.substring(12); 
		System.out.println(path);
		File folder = new File(".");
		
		System.out.println(folder.getAbsolutePath());
	
		
		
		
		if(folder.mkdirs()) {
			try {
				
				System.out.println("폴더 생성완료");
			}
			catch(Exception e) {
				e.getStackTrace();
			}
		}else {
			System.out.println("이미 폴더가 있습니다.");
		}
		
		Desktop.getDesktop().open(folder);
		
		
		request.getRealPath(path);
		
		String duedate_str = request.getParameter("duedate");
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		String intro = request.getParameter("intro");
		
		Date duedate = null;
		try {
			duedate = transFormat.parse(duedate_str);
		} catch (java.text.ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		java.sql.Date sqlDate = new java.sql.Date(duedate.getTime());
		
		
		   String sql = "INSERT INTO STUDY(TITLE, MEMBER_ID, CATEGORY_ID, LIMIT, OPEN, DUEDATE, INTRO) VALUES (?, ?, ?, ?, ?, ?, ?)";


	
		   int flag = 0;
		   
	        try {
	            Connection con = DatabaseUtil.getConnection();
		        PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, title);
		        pstmt.setInt(2, memberId);
		        pstmt.setInt(3, category);
		        pstmt.setInt(4, limit);
		        pstmt.setInt(5, open);
		        pstmt.setDate(6, sqlDate);
		        pstmt.setString(7, intro);
		        flag = pstmt.executeUpdate();
		        pstmt.close();
		        con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}



	        
	        
	        if(flag == 1)
	            response.sendRedirect("/study/list.jsp");





		// title, memberid, categoryid, limit, open, intro, bg, path
		// title, category, limit, open, duedate, intro
	}
}