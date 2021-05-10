package com.stardy.controller.root;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupController extends HttpServlet{

	String path = "C:\\temp\\datas\\member.txt";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//request.getRequestDispatcher("/WEB-INF/views/signup.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(isVaild(nick, email, password)) {

			File file = new File(path);
			
			if(!file.exists())
				file.createNewFile();
			
			BufferedWriter bw = new BufferedWriter(new FileWriter(file, true));
			PrintWriter pw = new PrintWriter(bw, true);
			
			pw.println(email + "," + password + "," + nick);
			
			bw.close();
			pw.close();
			
			response.sendRedirect("/login");
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/login");
//			request.setAttribute("msg", "success");
//			dispatcher.forward(request, response);
		}
	}
	
	public boolean isVaild(String nick, String email, String password) {
		
		return (nick != null && !nick.equals(""))
				&& (email != null && !email.equals(""))
				&& (password != null && !password.equals(""));
	}
}
