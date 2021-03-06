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
                            <p>????????????</p>
                            <a href="" class="shopping-purchased">????????????<br></a>
                            <a href="" class="shopping-cart">????????????<br></a>
                            <a href="" class="shopping-like">?????????</a>
                        </div>
                    </div>
                    <div class="member-info-container">
                        <div class="member-info-area">
                            <p>????????????</p>
                            <a href="" class="member-delivery">???????????????<br></a>
                            <a href="" class="member-payment">??????????????????</a>
                        </div>
                    </div>
                </div>
                <div class="profile-card-container">
                    <div class="profile-thumb-container">
                        <img src="resources/user-images/${userDetail.savedFileName}" alt="??????????????? ??????" id="imageTag" class="profile-thumb-img">
                        <input type="file" name="savedFileName" id="profileImage" onchange="readImage(this)">
                    </div>
                    <div class="profile-content-container">
                        <div class="content-top-container">
                            <div class="user-name-area">
                                <input type="text" placeholder="?????? ??????.. ???" name="name" onfocus="this.placeholder=''"
                            onblur="this.placeholder='?????? ??????.. ???'" value="${userDetail.name}">
                            </div>
                            <div class="user-id-area">
                                <input type="text" placeholder="@????????? ??????.." name="searchId" onfocus="this.placeholder=''"
                            onblur="this.placeholder='@????????? ??????..'" value="${userDetail.searchId}">
                            </div>
                        </div>
                        <div class="content-bottom-container">
                            <div class="profile-btn-area">
                                <button class="profile-edit-btn" onclick="updateUserInform()">?????? ?????? ??????</button>
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
            <p>???????????? | ???????????? | ???????????? | ????????? ?????? | ???????????? ???????????????</p>
            <p>???????????? ???????????? ???????????? ???????????? ????????????????????????</p>
            <a>FLEX ???????????? ?? ??????:????????? ?????????????????????:570-11-012342 ????????????????????????????????????: ??? 2033-??????C-0293???<a>
                    <br>
                    <a>??????????????????: ????????? ????????? ????????? ????????? 29, ????????? 5??? ???????????????????????????: ????????? ??????????????????: ?????????</a>
                    <br>
                    <br>
                    <a>FLEX(???)??? ???????????? ??????????????? ??????????????? ???????????? ???????????? ?????? ???????????? ????????? ??????????????? ????????? ????????? ?????? ????????????.</a>
                    <br>
                    <a> ???, ?????????????????? ???????????? ???????????? ????????? ?????? ????????? ????????? ????????????.</a>
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