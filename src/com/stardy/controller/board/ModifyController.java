package com.stardy.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stardy.entity.Board;
import com.stardy.service.BoardService;

@WebServlet("/board/modify")
public class ModifyController extends HttpServlet{

	BoardService boardService = new BoardService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int bid = -1;
		String title = "";
		String content = "";
		
		String bid_ = request.getParameter("bid");
		String title_ = request.getParameter("title");
		String content_ = request.getParameter("content");
		
		if(bid_ != null && !bid_.equals(""))
			bid = Integer.parseInt(bid_);
		if(title_ != null && !title_.equals(""))
			title = title_;
		if(content_ != null && !content_.equals(""))
			content = content_;
		
		Board board = boardService.read(bid);
		board.setTitle(title);
		board.setContent(content);
		
		boardService.modify(board);
		
		response.sendRedirect("/board/read.jsp?bid=" + bid);
	}
}
