package com.stardy.service;


import java.util.List;

import com.stardy.entity.Friend;

 interface FriendService {
	 List<Friend> getFriends(int memberId);
	 List<Friend> getFollowers(int memberId);
	 int unfollow(int originId, int targetId);
	int follow(int originId, int targetId);

}
