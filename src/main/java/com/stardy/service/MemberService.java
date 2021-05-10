package com.stardy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.stardy.entity.Member;
import com.stardy.util.DatabaseUtil;

public class MemberService {
    //회원가입
    public boolean inserMember(Member user) {
        String sql ="INSERT Member(nick,email,password) VALUES (?,?,?)";
        Connection con=null;
        PreparedStatement pstmt = null;
        boolean flag=false;

        try {
            con = DatabaseUtil.getConnection();
            pstmt =con.prepareStatement(sql);
            pstmt.setString(1, user.getNickname());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());


            if(pstmt.executeUpdate()==1)
                flag=true;

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {if(con !=null)con.close();}catch (Exception e) {e.printStackTrace();}
            try {if(pstmt !=null)con.close();}catch (Exception e) {e.printStackTrace();}
        }
        return flag;

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
}