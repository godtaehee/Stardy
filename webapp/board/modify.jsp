<%@page import="com.stardy.entity.Like"%>
<%@page import="com.stardy.service.LikeService"%>
<%@page import="com.stardy.service.BookmarkService"%>
<%@page import="com.stardy.service.BoardService"%>
<%@page import="com.stardy.entity.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- CSS -->
    
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/main-only/layout.css">
    <link rel="stylesheet" href="../css/main-only/element.css">
    <link rel="stylesheet" href="../css/board/read.css">
    <link rel="stylesheet" href="../css/reset.css">

    <!-- CDN -->
    <script src="https://kit.fontawesome.com/a93ae2d5d1.js" crossorigin="anonymous"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <title>Document</title>
</head>

<body>

<%
	BoardService boardService = new BoardService();

	String bid_ = request.getParameter("bid");
	int bid = 0;
	
	if(bid_ != null && !bid_.equals(""));
		bid = Integer.parseInt(bid_);
		
	Board board = boardService.read(bid);
	
	String email = (String) request.getSession().getAttribute("email");
	
%>

    <div class="container-only body__container">
        <%@include file="/layout/header.jsp" %>
        
        <main class="main-only">
            <section class="board-read-box">
                <h1 class="hide">게시글 상세 보기</h1>
                
                <section class="board-box">
                    <h1 class="hide">게시글 상세</h1>
                    
                    <form action="/board/modify" method="post" id="action-form">
	                    <input type="hidden" name="bid" value="<%=board.getBid() %>">
	                    
	                    <div class="pager-box">
	                        <h1 class="hide">게시글 페이저</h1>
	                    </div>
	                    
	                    <div class="input-box">
	                        <input type="text" class="input-item title" name="title" value="<%=board.getTitle() %>">
	                    </div>
	
	                    <div class="input-box span-box">
	                        <span class="span writer"><%=board.getWriter() %></span>
	                        <span class="span">/</span>
	                        <span class="span regdate"><%=board.getRegDate() %></span>
	                    </div>
	                    <hr>
	                    <div class="input-box">
	                        <textarea name="content" rows="20" class="input-item input--text" ><%=board.getContent() %></textarea>
	                    </div>
	
	                    <nav class="util-box">
	                        
	                        <div class="button-box">
	                            <h1 class="hide">버튼 박스</h1>
	                            <a href="/board/read?bid=<%=board.getBid() %>" class="btn button button-back">취소</a>
	                            
	                            <%if(email.equals(board.getEmail())) {%>
	                            <button class="btn button button-modify">저장</button>
	                            <a href="#" class="btn button button-delete">삭제</a>
	                            <%} %>
	                            
	                            <!-- 사용자 인증을 위한 Email 데이터, Session의 Email과 대조 해서 본인 확인 -->
	                            <input type="hidden" name="email" value="<%=board.getEmail() %>">
	                        </div>
	                    </nav>
                    </form>
                </section>
                
            </section>
            
        </main>
        
<%@include file="/layout/footer.jsp" %>
    </div>

<!-- Modal -->
<div class="modal hide">
    <div class="modal-main">
        <label class="modal-title">Comment</label>
        <div class="reply-content-box">
            <input type="text" class="input--text reply" value="">
        </div>
        <div class="reply-info-box">
            <input type="text" class="input--text reply-writer" value="" readonly>
            <input type="text" class="input--text regdate" value="" readonly>
            <input type="hidden" class="reply-email" value="">
            <input type="hidden" class="reply-rid" value="">
        </div>
    </div>

    <div class="modal-footer">
        <div class="modal-button-box">
            <button class="button button-modify">수정</button>
            <button class="button button-delete">삭제</button>
            <button class="button button-cancel">취소</button>
        </div>
    </div>
</div>
<!-- Modal -->

<!-- Javascript -->
<script>
	window.email = '${email}';
	window.bid = <%=board.getBid() %>;
</script>
<script src="../js/board/modify.js"></script>
<script src="../js/ajax/ajax.js"></script>
</body>
</html>