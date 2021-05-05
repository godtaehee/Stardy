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
    <link rel="stylesheet" href="../css/modal.css">

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
	int next = boardService.getNext(bid);
	int prev = boardService.getPrev(bid);
%>

    <div class="container-only body__container">
        <%@include file="/layout/header.jsp" %>
        
        <main class="main-only">
            <section class="board-read-box">
                <h1 class="hide">게시글 상세 보기</h1>
                
                <section class="board-box">
                    <h1 class="hide">게시글 상세</h1>
                    
                    <input type="hidden" value="bno" name="bno">

                    <button class="bookmark icon-bookmark-off button-img"></button>
                    <div class="input-box">
                        <input type="text" class="input-item title" value="<%=board.getTitle() %>" readonly>
                    </div>

                    <div class="input-box span-box">
                        <span class="span writer"><%=board.getWriter() %></span>
                        <span class="span">/</span>
                        <span class="span regdate"><%=board.getRegDate() %></span>
                    </div>
                    <hr>
                    <div class="input-box">
                        <textarea name="content" rows="20" class="input-item input--text" readonly><%=board.getContent() %></textarea>
                    </div>

                    <nav class="util-box">
                        <div class="pager-box">
                            <h1 class="hide">게시글 페이저</h1>
                            <%if(next > 0) {%>
                            <a href="read.jsp?bid=<%=next %>" class="btn button"><i class="fas fa-2x fa-angle-up"></i><!-- &nbsp다음 글 --></a>
                            <%} %>
                            
                            <%if(prev > 0) {%>
                            <a href="read.jsp?bid=<%=prev %>" class="btn button"><i class="fas fa-2x fa-angle-down"></i><!-- &nbsp이전 글 --></a>
                            <%} %>
                        </div>
                        <div class="button-box">
                            <h1 class="hide">버튼 박스</h1>
                            <a href="/study/detail.jsp?sid=<%=board.getSid() %>" class="btn button button-back">스터디 보기</a>
                            <a href="modify.html" class="btn button button-back">수정하기</a>
                        </div>
                    </nav>
                </section>
                
                <section class="reply-box">
                    <h1 class="hide">댓글 창</h1>

                    <section class="reply-add-box">
                        <h1 class="hide">댓글 작성 창</h1>
                        <textarea class="input-item input--text" name="reply-content" rows="5" placeholder="여러분의 소중한 댓글을 작성해주세요."></textarea>
                        <button class="btn button button-register">등록</button>
                    </section>

                    <section class="reply-list-box">
                        <h1 class="hide">댓글 목록</h1>
                        <label class="reply-box-title">Comments</label>
                        <div class="reply-list">
                            <div class="replies">
                                <div>
                                    <p class="reply">댓글 댓글 댓글1</p>
                                    <span class="span reply-writer">gorany</span>
                                    <span class="span">/</span>
                                    <span class="span regdate">2021-04-22</span>
                                </div>
                            </div>
                            <div class="replies">
                                <div>
                                    <p class="reply">댓글댓글댓글2</p>
                                    <span class="span reply-writer">gorany</span>
                                    <span class="span">/</span>
                                    <span class="span regdate">2021-04-22</span>
                                </div>
                            </div>
                            <div class="replies">
                                <div>
                                    <p class="reply">댓글댓글댓글3</p>
                                    <span class="span reply-writer">gorany</span>
                                    <span class="span">/</span>
                                    <span class="span regdate">2021-04-22</span>
                                </div>
                            </div>
                            <div class="replies">
                                <div>
                                    <p class="reply">댓글댓글댓글4</p>
                                    <span class="span reply-writer">gorany</span>
                                    <span class="span">/</span>
                                    <span class="span regdate">2021-04-22</span>
                                </div>
                            </div>
                            <div class="replies">
                                <div>
                                    <p class="reply">댓글댓글댓글5</p>
                                    <span class="span reply-writer">gorany</span>
                                    <span class="span">/</span>
                                    <span class="span regdate">2021-04-22</span>
                                </div>
                            </div>
                        </div>
                        <div class="more-box">
                            <i class="fas fa-2x fa-plus-circle button-more"></i>
                            <i class="fas fa-2x fa-spinner spinner hide"></i>
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
            <input type="text" class="input--text reply" value="">
        </div>
        <div class="reply-info-box">
            <input type="text" class="input--text reply-writer" value="" readonly>
            <input type="text" class="input--text regdate" value="" readonly>
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
<script src="../js/modal.js"></script>
<script src="../js/board/read.js"></script>
</body>
</html>