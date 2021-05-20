package com.stardy.service;

import java.util.List;

import com.stardy.entity.Board;

public interface BookmarkService {
	boolean isSub(int memberId, int boardId);
	void add(int memberId, int boardId);
	void remove(int memberId, int boardId);
	void removeAll(int id);
	List<Board> getSubs(int loginId);


}
