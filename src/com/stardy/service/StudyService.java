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

                Study study = new Study();
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
                list.add(study);
            }


        pstmt.close();
        con.close();
        rs.close();
        return list;
    }
}