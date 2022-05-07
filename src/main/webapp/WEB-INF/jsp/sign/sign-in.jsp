<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign IN Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../../resources/css/sign-in/style.css">
    <link rel="stylesheet" href="../../../resources/css/main/reset.css">
</head>

<body>
    <div id="header">
        <header>
            <a href="#" title="Logo"><img src="../../../resources/img/main/logo.png"></a>
            <nav>
                <a href="">STYLE</a> <a href="">SHOP</a> <a href="">ABOUT</a> <a href="">SIGN IN</a>
            </nav>
        </header>
    </div>
    <h1 class="signin-text">SIGN IN</h1>
    <div class="wrapper">
        <form action="/login" method="post">
            <img src="../../../resources/img/main/logo.png" class="signlogo">
            <div class="smform">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">이메일 주소</label>
                    <input name="login_id" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        style="height:30px;border:none;border-bottom:1px solid #afafaf;border-radius:0">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">비밀번호</label>
                    <input name="login_password" type="password" class="form-control" id="exampleInputPassword1"
                        style="height:30px;border:none;border-bottom:1px solid #afafaf;border-radius:0">
                </div>
                <div class="smform-btn">
                    <a href="#">회원가입</a><a href="#">아이디 찾기</a><a href="#">비밀번호 찾기</a>
                </div>
            </div>
            <button class="stbtn">Start FLEX</button>
            <button>Start FLEX to <span style="color:#009F31">NAVER</span></button>
        </form>
    </div>
    <footer>
        <div class="footer-cont">
            <img src="../../../resources/img/main/logo.png" alt="footer-logo" style="padding-bottom:50px">
            <p>이용안내 | 검수기준 | 이용정책 | 패널티 정책 | 커뮤니티 가이드라인</p>
            <p>회사소개 인재채용 제휴제안 이용약관 개인정보처리방침</p>
            <a>크림 주식회사 . 대표김창욱사업자등록번호:570-88-01618사업자정보확인통신판매업:제 2021-성남분당C-0093호<a>
                    <br>
                    <a>사업장소재지:경기도 성남시 분당구 분당내곡로 117, 8층개인정보관리책임자:김미진호스팅 서비스:네이버 클라우드 (주)</a>
                    <br>
                    <br>
                    <a>크림(주)는 통신판매 중개자로서 통신판매의 당사자가 아니므로 개별 판매자가 등록한 상품정보에 대해서 책임을 지지 않습니다.</a>
                    <br>
                    <a> 단, 거래과정에서 검수하고 보증하는 내용에 대한 책임은 당사에 있습니다.</a>
        </div>
    </footer>
</body>

</html>