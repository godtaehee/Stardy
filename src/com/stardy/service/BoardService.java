package com.stardy.service;

import java.util.List;

import com.stardy.entity.Board;

 interface BoardService {
	 String getWriter(int bid);
	 List<Board> getList(int sid);
	 int getNext(int id, int studyId);
	 int getPrev(int id, int studyId);
	 Board read(int id);
	 int modify(Board board);
	 int delete(int id);
}
