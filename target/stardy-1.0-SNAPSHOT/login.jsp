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
    <link rel="stylesheet" href="./css/login.css">

    <!-- Javascript -->
    <script src="../js/login.js"></script>
    <script src="../js/common.js"></script>
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
                    <form id="search-form" method="POST" action="login">
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
            <section class="login-container">
                <h1 class="login-title">로그인</h1>

                <div class="login-form-container">
                    <h1 class="hide">로그인 폼</h1>
                    <form action="/login" method="post" class="form form-login">
                        <div class="input-control">이메일을 입력해주세요.</div>
                        <input class="input-item input--text" name="email" type="email" placeholder="error@mail.com">

                        <div class="input-control">비밀번호를 입력해주세요.</div>
                        <input class="input-item input--text" name="password" type="password" placeholder="******">
                        <div class="login-error hide"></div>
                        <div>
                            <button class="btn button button-login"></button>
                        </div>

                        <div class="login-help">
                            <a href="#" class="find-password">비밀번호 찾기</a>
                            <img class="between-border" src="../img/between-border.png">
                            <a href="signup" class="signup">회원가입하기</a>
                        </div>
                    </form>

                </div>
            </section>
            
        </main>
        
        <footer class="footer">
            <h1 class="hide">footer</h1>
            
        </footer>
    </div>
</body>
</html>