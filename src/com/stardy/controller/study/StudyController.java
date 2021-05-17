package com.stardy.controller.study;

import com.stardy.entity.Study;
import com.stardy.util.DatabaseUtil;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/study/target")
public class StudyController extends HttpServlet {


    public Study getStudy(int id) throws SQLException {
// SELECT TRUNC(DUEDATE) - TRUNC(REGDATE) FROM STUDY
        String sql = "SELECT * FROM STUDY WHERE SID=?";
        Connection con = null;
        PreparedStatement pstmt = null;

        con = DatabaseUtil.getConnection();

        pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, id);
        ResultSet rs = pstmt.executeQuery();

        Study study = new Study();
        while(rs.next()) {
            int sId = rs.getInt("SID");
            String title = rs.getString("TITLE");
            String leader = rs.getString("LEADER");
            int category = rs.getInt("CATEGORY");
            int limit = rs.getInt("LIMIT");
            int open = rs.getInt("OPEN");
            Date dueDate = rs.getDate("DUEDATE");
            String intro = rs.getString("INTRO");
            Date regDate = rs.getDate("REGDATE");
            Date updateDate = rs.getDate("UPDATEDATE");
            String bg = rs.getString("BG");
            String path = rs.getString("PATH");
            int crnt = rs.getInt("CRNT");


            study.setSid(sId);
            study.setTitle(title);
            study.setLeader(leader);
            study.setCategory(category);
            study.setLimit(limit);
            study.setOpen(open);
            study.setDueDate(dueDate);
            study.setIntro(intro);
            study.setRegDate(regDate);
            study.setUpdateDate(updateDate);
            study.setBg(bg);
            study.setPath(path);
            study.setCrnt(crnt);
        }



        pstmt.close();
        con.close();
        rs.close();
        return study;
    }

    public int getDuringTime(int id) throws SQLException {
        //
        String sql = "SELECT TRUNC(DUEDATE) - TRUNC(REGDATE) AS TIMES FROM STUDY WHERE SID=?";
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
}
