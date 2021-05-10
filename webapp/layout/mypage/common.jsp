<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String paths = request.getServletPath();

String current = paths.substring(paths.lastIndexOf('/') + 1, paths.lastIndexOf('.'));
System.out.println(current);
%>
			<h1 class="hide">마이페이지</h1>
                <div class="profile-box">
                    <h1 class="hide">프로필 박스</h1>
                    <div class="dummy-box"></div>
                    <div class="profile-icon-box">
                        <img class="profile-icon" src="../img/icon-person-dummy.png" alt="profile icon">
                    </div>
                    <div class="profile-info-box">
                        <div class="profile-nick-box">
                            <label class="profile-nick">왕밤빵</label>
                        </div>
                        <div class="profile-status-box">
                            <input class="profile-status" type="text" value="💻 코딩의 늪" readonly>
                        </div>
                        <div class="profile-modify-box">
                            <button class="button button-img profile-modify">프로필 수정</button>
                        </div>
                    </div>
                </div>

                <div class="content-box">
                    <h1 class="hide">컨텐츠 박스</h1>
                    <nav class="content-menu">
                        <ul>
                            <li class="nav-item <%= (current.equals("friends") || current.equals("friend-modify"))? "menu-underline":"" %>">
                                <a href="friends.jsp" class="<%= (current.equals("friends") || current.equals("friend-modify"))? "friends-list-on":"friends-list" %>">친구목록</a>
                            </li>
                            <li class="nav-item <%= current.equals("bookmark")? "menu-underline":"" %>">
                                <a href="bookmark.jsp" class="<%= current.equals("bookmark")? "my-bookmark-on":"my-bookmark" %>">즐겨찾기</a>
                            </li>
                            <li class="nav-item <%= current.equals("modify")? "menu-underline":"" %>">
                                <a href="modify.jsp" class="<%= current.equals("modify")? "my-modify-on":"my-modify" %>">회원 정보 수정</a>
                            </li>
                        </ul>
                    </nav>