package com.stardy.controller.bookmark;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stardy.service.BookmarkService;

@WebServlet("/sub/*")
public class BookmarkController extends HttpServlet{

	static BookmarkService service = new BookmarkService();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pathInfo = request.getPathInfo(); /* /sub/add/{bid} */
		System.out.println(pathInfo);
		String[] vals = pathInfo.split("/");
		
		String email = request.getParameter("email");
		int bid = Integer.parseInt(vals[0]);
		
		service.add(email, bid);
	}
	
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
}
