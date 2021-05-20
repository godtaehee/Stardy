package com.stardy.controller.bookmark;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.stardy.entity.Board;
import com.stardy.service.BookmarkServiceImpl;

@WebServlet("/sub/*")
public class SubController extends HttpServlet{

	static BookmarkServiceImpl service = new BookmarkServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		int memberId = (int) request.getSession().getAttribute("id");
				
		List<Board> list = service.getSubs(memberId);
		
		Gson gson = new Gson();
		String json = gson.toJson(list);
		
		out.println(json);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pathInfo = request.getPathInfo(); /* /sub/{id} */
		String[] vals = pathInfo.split("/");
		
		int memberId = (int) request.getSession().getAttribute("id");
		int boardId = Integer.parseInt(vals[1]);
		
		service.add(memberId, boardId);
	}
	
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pathInfo = request.getPathInfo(); /* /sub/{id} */
		String[] vals = pathInfo.split("/");
		
		int memberId = (int) request.getSession().getAttribute("id");
		int boardId = Integer.parseInt(vals[1]);
		
		service.remove(memberId, boardId);
	}
	
}
