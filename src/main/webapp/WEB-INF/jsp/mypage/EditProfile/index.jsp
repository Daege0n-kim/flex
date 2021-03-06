<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/css/mypage/EditProfile/style.css">
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
            <a href="/" title="Logo"><img src="../../../resources/img/main/logo.png" alt="logo"></a>
            <nav>
                <a href="/style">STYLE</a> <a href="/show_products">SHOP</a> <a href="/about">ABOUT</a>
                <c:set var="name" value="${loginId}" />
                <c:choose>
                    <c:when test="${empty name}">
                        <a href="/sign-in">SIGN IN</a>
                    </c:when>
                    <c:when test="${not empty name}">
                        <a href="/mypageUserImage">MYPAGE</a>
                        <a href="/logout">SIGN OUT</a>
                    </c:when>
                </c:choose>
            </nav>
        </header>
    </div>

    <p class="mypage-text">MYPAGE</p>

    <div class="side-txt">
        <div class="txt">
            FLEX FOR LIMITED EDITION TRANSACTION
        </div>
    </div>

    <div class="main-container">
        <form action="/update-user-inform" id="updateForm" method="post" enctype="multipart/form-data">
            <input type="hidden" name="loginId" value="${userDetail.loginId}">
            <div class="main-top-container">
                <div class="side-menu">
                    <div class="shopping-info-container">
                        <div class="shopping-info-area">
                            <p>쇼핑정보</p>
                            <a href="" class="shopping-purchased">구매내역<br></a>
                            <a href="" class="shopping-cart">장바구니<br></a>
                            <a href="" class="shopping-like">좋아요</a>
                        </div>
                    </div>
                    <div class="member-info-container">
                        <div class="member-info-area">
                            <p>회원정보</p>
                            <a href="" class="member-delivery">배송지관리<br></a>
                            <a href="" class="member-payment">결제수단관리</a>
                        </div>
                    </div>
                </div>
                <div class="profile-card-container">
                    <div class="profile-thumb-container">
                        <img src="resources/user-images/${userDetail.savedFileName}" alt="프로필사진 선택" id="imageTag" class="profile-thumb-img">
                        <input type="file" name="savedFileName" id="profileImage" onchange="readImage(this)">
                    </div>
                    <div class="profile-content-container">
                        <div class="content-top-container">
                            <div class="user-name-area">
                                <input type="text" placeholder="이름 입력.. 님" name="name" onfocus="this.placeholder=''"
                            onblur="this.placeholder='이름 입력.. 님'" value="${userDetail.name}">
                            </div>
                            <div class="user-id-area">
                                <input type="text" placeholder="@사용자 이름.." name="searchId" onfocus="this.placeholder=''"
                            onblur="this.placeholder='@사용자 이름..'" value="${userDetail.searchId}">
                            </div>
                        </div>
                        <div class="content-bottom-container">
                            <div class="profile-btn-area">
                                <button class="profile-edit-btn" onclick="updateUserInform()">정보 수정 완료</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <footer>
        <div class="footer-cont">
            <img src="resources/img/main/logo.png" alt="footer-logo" style="padding-bottom:50px">
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

        function updateUserInform() {
            const form = $("#updateForm")

            form.submit()
        }

        function readImage(input) {
            const fileTag = document.querySelector("#profileImage")
            const imgTag = document.querySelector("#imageTag")

            console.log(imgTag.src)
            
            if(input.files && input.files[0]) {
                const reader = new FileReader()

                reader.onload = e => {
                    imgTag.src = e.target.result
                }

                reader.readAsDataURL(input.files[0]);
            } else {
                imgTag.src = ''
            }
        }
    </script>
</body>

</html>