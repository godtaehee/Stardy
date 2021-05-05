package com.stardy.controller.reply;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/replies/1")
public class ListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.write("           <div class=\"replies\">\r\n"
				+ "                <div>\r\n"
				+ "                    <p class=\"reply\">댓글댓글댓글5</p>\r\n"
				+ "                    <span class=\"span reply-writer\">gorany</span>\r\n"
				+ "                    <span class=\"span\">/</span>\r\n"
				+ "                    <span class=\"span regdate\">2021-04-22</span>\r\n"
				+ "                </div>\r\n"
				+ "            </div>\r\n"
				+ "            <div class=\"replies\">\r\n"
				+ "                <div>\r\n"
				+ "                    <p class=\"reply\">댓글댓글댓글5</p>\r\n"
				+ "                    <span class=\"span reply-writer\">gorany</span>\r\n"
				+ "                    <span class=\"span\">/</span>\r\n"
				+ "                    <span class=\"span regdate\">2021-04-22</span>\r\n"
				+ "                </div>\r\n"
				+ "            </div>\r\n"
				+ "            <div class=\"replies\">\r\n"
				+ "                <div>\r\n"
				+ "                    <p class=\"reply\">댓글댓글댓글5</p>\r\n"
				+ "                    <span class=\"span reply-writer\">gorany</span>\r\n"
				+ "                    <span class=\"span\">/</span>\r\n"
				+ "                    <span class=\"span regdate\">2021-04-22</span>\r\n"
				+ "                </div>\r\n"
				+ "            </div>\r\n"
				+ "            <div class=\"replies\">\r\n"
				+ "                <div>\r\n"
				+ "                    <p class=\"reply\">댓글댓글댓글5</p>\r\n"
				+ "                    <span class=\"span reply-writer\">gorany</span>\r\n"
				+ "                    <span class=\"span\">/</span>\r\n"
				+ "                    <span class=\"span regdate\">2021-04-22</span>\r\n"
				+ "                </div>\r\n"
				+ "            </div>");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
