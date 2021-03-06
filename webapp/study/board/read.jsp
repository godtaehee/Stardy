<%@page import="com.stardy.entity.Like"%>
<%@page import="com.stardy.service.LikeServiceImpl"%>
<%@page import="com.stardy.service.BookmarkServiceImpl"%>
<%@page import="com.stardy.service.BoardServiceImpl"%>
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
    
    <link rel="stylesheet" href="../../css/basic.css">
    <link rel="stylesheet" href="../../css/header.css">
    <link rel="stylesheet" href="../../css/main-only/layout.css">
    <link rel="stylesheet" href="../../css/main-only/element.css">
    <link rel="stylesheet" href="../../css/board/read.css">
    <link rel="stylesheet" href="../../css/reset.css">
    <link rel="stylesheet" href="../../css/modal.css">

    <!-- CDN -->
    <script src="https://kit.fontawesome.com/a93ae2d5d1.js" crossorigin="anonymous"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <title>Document</title>
</head>

<body>

<%

	BoardServiceImpl boardService = new BoardServiceImpl();

	BookmarkServiceImpl bookmarkService = new BookmarkServiceImpl();
	LikeServiceImpl likeService = new LikeServiceImpl();

	String id_ = request.getParameter("id");
	int id = 0;
	
	if(id_ != null && !id_.equals(""));
		id = Integer.parseInt(id_);
		
	Board board = boardService.read(id);
	int studyId = board.getStudyId();
	
	int next = boardService.getNext(id, studyId);
	int prev = boardService.getPrev(id, studyId);
	Integer loginId = (Integer) request.getSession().getAttribute("id");
	
	boolean isSub = bookmarkService.isSub(loginId, id);
	boolean isLike = likeService.isLike(new Like(loginId, id));
%>

    <div class="container-only body__container">
        <%@include file="/layout/header.jsp" %>
        
        <main class="main-only">
            <section class="board-read-box">
                <h1 class="hide">????????? ?????? ??????</h1>
                
                <section class="board-box">
                    <h1 class="hide">????????? ??????</h1>
                    
                    <input type="hidden" value="id" name="id" value="<%=board.getId() %>">
                    
                    <div class="pager-box">
                        
                            <h1 class="hide">????????? ?????????</h1>
                            <%if(next > 0) {%>
                            <a href="read.jsp?id=<%=next %>" class="btn button"><i class="fas fa-2x fa-angle-up"></i><!-- &nbsp?????? ??? --></a>
                            <%} %>
                            
                            <%if(prev > 0) {%>
                            <a href="read.jsp?id=<%=prev %>" class="btn button"><i class="fas fa-2x fa-angle-down"></i><!-- &nbsp?????? ??? --></a>
                            <%} %>
                            
                        </div>
                    
                    <div class="input-box">
                        <input type="text" class="input-item title" value="<%=board.getTitle() %>" readonly>
                    </div>

                    <div class="input-box span-box">
                        <span class="span writer"><%=board.getMemberId() %></span>
                        <span class="span">/</span>
                        <span class="span regdate"><%=board.getRegDate() %></span>
                    </div>
                    <hr>
                    <div class="input-box">
                        <textarea name="content" rows="20" class="input-item input--text" readonly><%=board.getContent() %></textarea>
                    </div>

                    <nav class="util-box">
                        
                        <div class="info-box">
	                        <button class="button-like button-img <%=isLike? "like":"unlike"%>"></button>
		                    <span class="likes">0</span>
		                    <button class="bookmark button-img <%=isSub? "icon-bookmark":"icon-bookmark-off" %>"></button>
	                    </div>
                        <div class="button-box">
                            <h1 class="hide">?????? ??????</h1>
                            <a href="/study/detail.jsp?id=<%=board.getStudyId() %>" class="btn button button-back">??????</a>
                            
                            <%if(loginId.equals(board.getMemberId())) {%>
                            <a href="modify.jsp?id=<%=board.getId() %>" class="btn button button-modify">????????????</a>
                            <%} %>
                            
                            <!-- ????????? ????????? ?????? Email ?????????, Session??? Email??? ?????? ?????? ?????? ?????? -->
                            <input type="hidden" name="email" value="<%=board.getMemberId() %>">
                        </div>
                    </nav>
                </section>
                
                <section class="reply-box">
                    <h1 class="hide">?????? ???</h1>

                    <section class="reply-add-box">
                        <h1 class="hide">?????? ?????? ???</h1>
                        <textarea class="input-item input--text" name="reply-content" rows="5" maxlength="100" placeholder="???????????? ????????? ????????? ??????????????????."></textarea>
                        <div class="limit">
                            <span>(</span>
                            <span class="text-limit">0</span>
                            <span >/100)</span>
                        </div>
                        <button class="btn button button-register">??????</button>
                    </section>

                    <section class="reply-list-box">
                        <h1 class="hide">?????? ??????</h1>
                        <label class="reply-box-title">Comments</label>
                        <span class="reply-count"></span>
                        <div class="reply-list">
                            <!-- <div class="replies">
                                <div>
                                    <p class="reply">?????? ?????? ??????1</p>
                                    <span class="span reply-writer">gorany</span>
                                    <span class="span">/</span>
                                    <span class="span regdate">2021-04-22</span>
                                </div>
                            </div> -->
                            
                        </div>
                        <div class="more-box">
                            <i class="fas fa-2x fa-plus-circle button-more"></i>
                        </div>
                    </section>

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
        <textarea class="input--text reply" rows="10" cols="5"></textarea>
            <!-- <input type="text" class="input--text reply" value=""> -->
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
            <button class="button button-modify">??????</button>
            <button class="button button-delete">??????</button>
            <button class="button button-cancel">??????</button>
        </div>
    </div>
</div>
<!-- Modal -->

<!-- Javascript -->
<script>
	window.loginId = <%=loginId %>;
	window.id = <%=board.getId() %>;
	window.isSub = <%=isSub%>;
	window.isLike = <%=isLike%>;
</script>
<script src="../../js/mymodal/modal.js"></script>
<script src="../../js/board/read.js"></script>
<script src="../../js/board/replyModule.js"></script>
<script src="../../js/ajax/ajax.js"></script>
</body>
</html>