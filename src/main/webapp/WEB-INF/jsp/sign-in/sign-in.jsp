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
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
</head>

<body>
    <div id="header">
        <header>
          <a href="/home" title="Logo"><img src="../../../resources/img/main/logo.png" alt="logo"></a>
          <nav>
            <a href="/style">STYLE</a> <a href="/shop">SHOP</a> <a href="/about">ABOUT</a>
            <c:set var="name" value="${userName}" />
            <c:choose>
              <c:when test="${empty name}">
                <a href="/sign-in">SIGN IN</a>
              </c:when>
              <c:when test="${not empty name}">
                <a href="/mypageUserImage">MYPAGE</a>
                <a href="/logout">
                  <li class="header-menu-list-item">SIGN OUT</li>
                </a>
              </c:when>
            </c:choose>
          </nav>
        </header>
      </div>

    <p class="signin-text">Sign IN</p>

    <div class="side-txt">
        <div class="txt">
            FLEX FOR LIMITED EDITION TRANSACTION
        </div>
    </div>

    <div class="wrapper">
        <form>
            <img src="../../../resources/img/main/logo.png" class="signlogo">
            <div class="smform">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" style="font-family:'Noto Sans KR',sans-serif">이메일 주소</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        style="height:2vw;border:none;border-bottom:0.1vw solid #afafaf;border-radius:0">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label" style="font-family:'Noto Sans KR',sans-serif">비밀번호</label>
                    <input type="password" class="form-control" id="exampleInputPassword1"
                        style="height:2vw;border:none;border-bottom:0.1vw solid #afafaf;border-radius:0">
                </div>
                <div class="smform-btn">
                    <a href="/sign-up">회원가입</a><a href="#">아이디 찾기</a><a href="#">비밀번호 찾기</a>
                </div>
            </div>
            <button class="stbtn">Start FLEX</button>
            
        </form>
    </div>
    <footer>
        <div class="footer-cont">
            <img src="../../../resources/img/main/logo.png" alt="footer-logo" style="padding-bottom:50px">
            <p>이용안내 | 검수기준 | 이용정책 | 패널티 정책 | 커뮤니티 가이드라인</p>
            <p>회사소개 인재채용 제휴제안 이용약관 개인정보처리방침</p>
            <a>FLEX 주식회사 · 대표:문동환 사업자등록번호:570-11-012342 사업자정보확인통신판매업: 제 2033-흑석C-0293호<a>
                    <br>
                    <a>사업장소재지: 경기도 안양시 동안구 임곡로 29, 전산관 5층 개인정보관리책임자: 안다희 호스팅서비스: 김대건</a>
                    <br>
                    <br>
                    <a>FLEX(주)는 통신판매 중개자로서 통신판매의 당사자가 아니므로 개별 판매자가 등록한 상품정보에 대해서 책임을 지지 않습니다.</a>
                    <br>
                    <a> 단, 거래과정에서 검수하고 보증하는 내용에 대한 책임은 당사에 있습니다.</a>
        </div>
    </footer>
    <script>
        var header = $('header');

        $(window).scroll(function (e) {
            if (header.offset().top !== 0) {
                if (!header.hasClass('shadow')) {
                    header.addClass('shadow');
                }
            } else {
                header.removeClass('shadow');
            }
        });
    </script>
</body>

</html>