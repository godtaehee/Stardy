package com.stardy.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stardy.entity.Board;
import com.stardy.service.BoardService;
import com.stardy.service.BookmarkService;
import com.stardy.service.LikeService;
import com.stardy.service.ReplyService;

@WebServlet("/board/delete")
public class DeleteController extends HttpServlet{

	BoardService boardService = new BoardService();
	ReplyService replyService = new ReplyService();
	BookmarkService bookmarkService = new BookmarkService();
	LikeService likeService = new LikeService();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bid = -1;
		String bid_ = request.getParameter("bid");
		
		System.out.println(bid_);
		
		if(bid_ != null && !bid_.equals(""))
			bid = Integer.parseInt(bid_);
		
		Board board = boardService.read(bid);
		
		if(bid != -1) {
			/* 좋아요 삭제 */
			likeService.removeAll(bid);
			/* 즐겨찾기 삭제 */
			bookmarkService.removeAll(bid);
			/* 댓글 삭제 */
			replyService.removeAll(bid);
			/* 게시글 삭제 */
			boardService.delete(bid);
		}
		
		response.sendRedirect("/study/list.jsp?sid=" + board.getSid());
	}
}
