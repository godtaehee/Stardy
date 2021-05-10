package com.stardy.controller.board;

import com.stardy.entity.Study;
import com.stardy.util.DatabaseUtil;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


@WebServlet("/study/write")
public class WriteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }

    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String email = (String) req.getSession().getAttribute("email");
        String nickname = (String) req.getSession().getAttribute("nickname");
//        int sid = Integer.parseInt(req.getParameter("sid"));
        int sid = 5;




        String sql = "INSERT INTO BOARD(TITLE, CONTENT, WRITER, SID, EMAIL) VALUES (?, ?, ?, ?, ?)";


        Connection con = DatabaseUtil.getConnection();
        PreparedStatement pstmt = con.prepareStatement(sql);

        pstmt.setString(1, title);
        pstmt.setString(2, content);
        pstmt.setString(3, nickname);
        pstmt.setInt(4, sid);
        pstmt.setString(5, email);

        int flag = pstmt.executeUpdate();

        System.out.println(flag);
        if(flag == 1)
            resp.sendRedirect("/study/detail.jsp?sid=" + sid);



        pstmt.close();
        con.close();


    }
}
