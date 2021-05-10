package com.stardy.controller.root;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stardy.entity.Member;
import com.stardy.service.MemberService;

@WebServlet("/login")
public class LoginController extends HttpServlet{

	static MemberService service = new MemberService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String msg = request.getParameter("msg");

		if(msg != null)
			request.setAttribute("msg", msg);

		//request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Member result = service.login(email, password);

		if(result != null) {
			request.getSession().setAttribute("nickname", result.getNickname());
			request.getSession().setAttribute("email", email);
			request.setAttribute("msg", "success");
			response.sendRedirect("/index2.jsp");
		}
		else {
			request.setAttribute("msg", "fail");
			response.sendRedirect("/login.jsp");

		}
	}
}