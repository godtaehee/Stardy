<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- CSS -->
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/basic.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/main-only/layout.css">
    <link rel="stylesheet" href="../css/main-only/element.css">
    <link rel="stylesheet" href="../css/mypage/common.css">
    <link rel="stylesheet" href="../css/mypage/modify.css">

    <!-- Javascript -->
    <script src="../js/mypage/mypage.js"></script>
    <script src="../js/mypage/modify.js"></script>
    <title>Document</title>
</head>

<body>
    <div class="container-only body__container">
        <header class="header">
            <h1 class="hide">header</h1>
            <!-- <a href=""></a> -->
    
            <div class="menu">
                <div class="logo flex">
                    <div class="icon"></div>
                </div>
    
                <div class="user-menu">
                    <form id="search-form" method="POST" action="">
                        <input type="text" id="search" class="input--text" placeholder="Search">
                        <input type="submit" value="Submit" class="hide">
                    </form>
    
                    <div class="on-box hide">
                        <div class="user-item">
                            <a class="btn show-study" href="#">스터디 보기</a>
                        </div>
                        <div class="user-item">
                            <a class="btn my-page" href="/mypage/friends">마이페이지</a>
                        </div>
    
                        <div class="drop-menu flex">
                            <div class="drop-list">
                                <div class="drop-item">
                                    <a href="#">로그아웃</a>
                                </div>
                                <div class="drop-item">
                                    <a href="#">설정</a>
                                </div>
                                <div class="drop-item">
                                    <a href="#">도움말</a>
                                </div>
                            </div>
                        </div>
                    </div>
    
                    <div class="out-box">
                        <div class="">
                            <a class="header-login btn" href="/login">로그인</a>
                        </div>
                        <div class="">
                            <a class="header-signup btn" href="/signup">회원가입</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <main class="main-only">

            <section class="my-page-box">
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
                            <button class="btn button button-img profile-modify">프로필 수정</button>
                        </div>
                    </div>
                </div>

                <div class="content-box">
                    <h1 class="hide">컨텐츠 박스</h1>
                    <nav class="content-menu">
                        <ul>
                            <li class="nav-item">
                                <a href="friends" class="friend-list">친구목록</a>
                            </li>
                            <!-- <li class="nav-item">
                                <a href="myStudy.html" class="my-study">가입한 스터디</a>
                            </li> -->
                            <li class="nav-item">
                                <a href="bookmark" class="my-bookmark">즐겨찾기</a>
                            </li>
                            <li class="nav-item menu-underline">
                                <a href="modify" class="my-modify">회원 정보 수정</a>
                            </li>
                        </ul>
                    </nav>

                    <section class="modify-box">
                        <h1 class="hide">회원 정보 수정 폼</h1>
                        
                        <div class="modify-form-box">
                            <form action="#" class="modify-form" method="post">
                                <div class="input-control">내 닉네임</div>
                                <input class="input-item input-nick input--text" type="text" value="test" name="nick">

                                <div class="input-control">내 이메일</div>
                                <input class="input-item input--text" type="email" value="test@naver.com" name="email" readonly>

                                <div class="input-control">비밀번호 변경</div>
                                <input class="input-item input-password input--text" type="password" placeholder="******" name="password">

                                <div class="input-control">비밀번호 확인</div>
                                <input class="input-item input--text" type="password" placeholder="******" name="check">

                                <div class="signup-error hide"></div>
                                <div class="button-box">
                                    <button class="btn button button-modify">개인정보 수정</button>
                                    <button class="btn button button-drop-out">회원 탈퇴</button>
                                </div>
                            </form>
                        </div>
                    </section>
                </div>

            </section>
        </main>
        
        <footer class="footer">
            <h1 class="hide">footer</h1>
            
        </footer>
    </div>
    
<script>
	window.addEventListener("load", function(){
	
	    var userId = '${email}';
	
		console.log(userId);
	
	    if(userId != null && userId != undefined && userId != ''){
	        var onBox = document.querySelector(".on-box");
	        var outBox = document.querySelector(".out-box");
	        	
	        onBox.className = 'on-box';
	        outBox.className = 'out-box hide';
	    }
	})
</script>
</body>
</html>