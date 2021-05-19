package com.stardy.controller.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stardy.service.MemberService;

@WebServlet("/mypage/delete")
public class DeleteController extends HttpServlet{

	MemberService service = new MemberService();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		service.deleteUser(id);
		request.getSession().invalidate(); //세션 초기화
		response.sendRedirect("/index.html"); //렌더링 페이지로 이동
	}
}
