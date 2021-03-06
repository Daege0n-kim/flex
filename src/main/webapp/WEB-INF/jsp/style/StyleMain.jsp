<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Style Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../../../resources/css/StyleMain/style.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
                rel="stylesheet">
            <link
                href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
                rel="stylesheet">
            <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        </head>

        <body>
            <div id="header">
                <header>
                    <a href="/" title="Logo"><img src="../../../resources/img/style/logo.png" alt="logo"></a>
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

            <h1 class="style-text">STYLE</h1>

            <div class="side-txt">
                <div class="txt">
                    FLEX FOR LIMITED EDITION TRANSACTION
                </div>
            </div>

            <div class="tab-container">
                <div class="tab">
                    <div class="tab-wrap">
                        <ul>
                            <li data-id="con1">??????</li>
                            <li data-id="con2" class="on">??????</li>
                            <li data-id="con3">?????????</li>
                        </ul>
                    </div>

                    <!-- style-popular -->
                    <div id="con1" class="conBox">
                        <div class="cont-wrap">
                            <!-- ?????? ??? ??? ?????? -->
                            <c:forEach var="item" items="${common}">
                            <div class="style-content">
                                <div class="st-img">
                                    <img src="resources/board-images/${item.savedFileName}">
                                </div>
                                <div class="popularcard">
                                    <p>
                                        @ <c:out value="${item.searchId}" /> <br>
                                        <span><c:out value="${item.boardContent}" />
                                    </p>
                                    <div class="post-response-area">
                                        <div class="post-like-container">
                                            <div class="post-like-img-container">
                                                <img src="../../../resources/img/style/like.png">
                                            </div>
                                            <div class="post-like-amount-container">
                                                <p>3</p>
                                            </div>
                                        </div>
                                        <div class="post-comment-container">
                                            <div class="post-comment-img-container">
                                                <img src="../../../resources/img/style/comment.png">
                                            </div>
                                            <div class="post-comment-amount-container">
                                                <p>3</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sm-img-wrap">
                                        <c:forEach var="data" items="${item.related}">
                                            <div class="card-sm-img">
                                                <img src="resources/product-image/${data}">
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <!-- ?????? ??? ??? ??? -->
                    </div>
                </div>

                    <!-- style-main -->
                    <div id="con2" class="conBox on">
                        <p class="tit">?????? ???????????? ????????????!!</p>
                        <div class="posting-card-bundle-container">
                            <!-- ?????? ??? ??? ?????? -->
                            <div class="posting-card-row-bundle-container">
                                <!-- ?????? ??? ??? ?????? -->
                                <c:forEach var="item" items="${sneakers}">
                                    <div class="post-card-container">
                                        <div class="post-thumb-container">
                                            <img src="resources/board-images/${item.savedFileName}" alt="No Image Here" class="post-thumb-img">
                                        </div>
                                        <div class="post-content-container">
                                            <div class="user-id-area">
                                                <p>@ <c:out value="${item.searchId}" /> </p>
                                            </div>
                                            <div class="post-title-area">
                                                <p> <c:out value="${item.boardContent}" /> </p>
                                            </div>
                                            <div class="post-response-area">
                                                <div class="post-like-container">
                                                    <div class="post-like-img-container">
                                                        <img src="Img/like.png">
                                                    </div>
                                                    <div class="post-like-amount-container">
                                                        <p>3</p>
                                                    </div>
                                                </div>
                                                <div class="post-comment-container">
                                                    <div class="post-comment-img-container">
                                                        <img src="Img/comment.png">
                                                    </div>
                                                    <div class="post-comment-amount-container">
                                                        <p>3</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-img-container">
                                                <c:forEach var="data" items="${item.related}">
                                                    <div class="product-thumb-container">
                                                        <img src="resources/product-image/${data}" alt="No Image Here" class="product-thumb-img" style="width: 100%;">
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- ?????? ??? ??? ??? -->
                            </div>
                            <!-- ?????? ??? ??? ??? -->
                        </div>
                        <p class="tit">?????? ?????? ??????!!?</p>
                        <div class="posting-card-bundle-container">
                            <!-- ?????? ??? ??? ?????? -->
                            <div class="posting-card-row-bundle-container">
                                <!-- ?????? ??? ??? ?????? -->
                                <c:forEach var="item" items="${jodan}">
                                    <div class="post-card-container">
                                        <div class="post-thumb-container">
                                            <img src="resources/board-images/${item.savedFileName}" alt="No Image Here" class="post-thumb-img">
                                        </div>
                                        <div class="post-content-container">
                                            <div class="user-id-area">
                                                <p>@ <c:out value="${item.searchId}" /> </p>
                                            </div>
                                            <div class="post-title-area">
                                                <p> <c:out value="${item.boardContent}" /> </p>
                                            </div>
                                            <div class="post-response-area">
                                                <div class="post-like-container">
                                                    <div class="post-like-img-container">
                                                        <img src="Img/like.png">
                                                    </div>
                                                    <div class="post-like-amount-container">
                                                        <p>3</p>
                                                    </div>
                                                </div>
                                                <div class="post-comment-container">
                                                    <div class="post-comment-img-container">
                                                        <img src="Img/comment.png">
                                                    </div>
                                                    <div class="post-comment-amount-container">
                                                        <p>3</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-img-container">
                                                <c:forEach var="data" items="${item.related}">
                                                    <div class="product-thumb-container">
                                                        <img src="resources/product-image/${data}" alt="No Image Here" class="product-thumb-img" style="width: 100%;">
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- ?????? ??? ??? ??? -->
                            </div>
                            <!-- ?????? ??? ??? ??? -->
                        </div>
                        <p class="tit">????????? ??????~~</p>
                        <div class="posting-card-bundle-container">
                            <!-- ?????? ??? ??? ?????? -->
                            <div class="posting-card-row-bundle-container">
                                <!-- ?????? ??? ??? ?????? -->
                                <c:forEach var="item" items="${stone}">
                                    <div class="post-card-container">
                                        <div class="post-thumb-container">
                                            <img src="resources/board-images/${item.savedFileName}" alt="No Image Here" class="post-thumb-img">
                                        </div>
                                        <div class="post-content-container">
                                            <div class="user-id-area">
                                                <p>@ <c:out value="${item.searchId}" /> </p>
                                            </div>
                                            <div class="post-title-area">
                                                <p> <c:out value="${item.boardContent}" /> </p>
                                            </div>
                                            <div class="post-response-area">
                                                <div class="post-like-container">
                                                    <div class="post-like-img-container">
                                                        <img src="Img/like.png">
                                                    </div>
                                                    <div class="post-like-amount-container">
                                                        <p>3</p>
                                                    </div>
                                                </div>
                                                <div class="post-comment-container">
                                                    <div class="post-comment-img-container">
                                                        <img src="Img/comment.png">
                                                    </div>
                                                    <div class="post-comment-amount-container">
                                                        <p>3</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-img-container">
                                                <c:forEach var="data" items="${item.related}">
                                                    <div class="product-thumb-container">
                                                        <img src="resources/product-image/${data}" alt="No Image Here" class="product-thumb-img" style="width: 100%;">
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- ?????? ??? ??? ??? -->
                            </div>
                            <!-- ?????? ??? ??? ??? -->
                        </div>
                    </div>
                    <!-- style-following -->
                    <div id="con3" class="conBox">
                        <div class="cont-wrap" style="margin-top:109px">
                            <div class="lineimg">
                                <div class="flimg">
                                    <img src="">
                                </div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                            </div>
                            <div class="lineimg">
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                            </div>
                            <div class="lineimg">
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                            </div>
                            <div class="lineimg">
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                            </div>
                            <div class="lineimg">
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                            </div>
                            <div class="lineimg">
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                                <div class="flimg"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="top-btn">
                <img src="resources/img/top-btn.png" alt="">
            </div>


            <footer>
                <div class="footer-cont">
                    <img src="../../../resources/img/main/logo.png" alt="footer-logo" style="padding-bottom:50px">
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

                var topBtn = document.querySelector('.top-btn');

                topBtn.addEventListener('click', e => {
                    window.scrollTo(0, 0);
                });


                $(function () {
                    // tab ????????? ??????????????? ??? ?????????
                    $(".tab ul li").click(function () {

                        // ?????? ?????????????????? ???????????? ????????????
                        $(".tab ul li").removeClass('on');
                        $(".tab .conBox").removeClass('on');

                        // ????????? ????????? on ???????????? ?????? ?????????
                        $(this).addClass('on');

                        // ????????? ?????? data ????????? content box??? ?????????
                        $("#" + $(this).data('id')).addClass('on');


                    });


                });

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