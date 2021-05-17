package com.stardy.controller.like;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stardy.entity.Like;
import com.stardy.service.BoardService;
import com.stardy.service.LikeService;
import com.stardy.util.Logger;

@WebServlet("/likes/*")
public class LikeController extends HttpServlet{

	BoardService boardService = new BoardService();
	LikeService likeService = new LikeService();
	Logger log = new Logger();
	
	// /likes/{id}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String[] paths = request.getPathInfo().split("/");
		
		for(String path : paths)
			System.out.println(path);
		
		int id = Integer.parseInt(paths[1]);
		
		int count = likeService.count(id);
		String result = String.valueOf(count);
		
		if(count >= 1000) {
			count /= 1000;
			result = String.valueOf(count) + "k";
		}
		
		out.println(result);
	}
	
	// /likes/reg/{id}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String[] paths = request.getPathInfo().split("/");
		
		for(String path : paths)
			System.out.println(path);
		
		if(!paths[1].equals("reg")) return;
		
		int id = Integer.parseInt(paths[2]);
		
		Like like = new Like((int) request.getSession().getAttribute("id"), id);
		
		likeService.register(like);
	}
	
	// /likes/rm/{id}
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String[] paths = request.getPathInfo().split("/");
		
		for(String path : paths)
			System.out.println(path);
		
		if(!paths[1].equals("rm")) return;
		
		int id = Integer.parseInt(paths[2]);
		
		Like like = new Like((int) request.getSession().getAttribute("id"), id);
		
		likeService.cancel(like);
	}
}
