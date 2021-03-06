<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Posting Detail Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../../../../resources/css/mypage/Related_Post/style.css">
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
                <div class="big-post-card-container">
                    <div class="big-thumb-container">
                        <img src="" alt="No Image Here" class="profile-thumb-img">
                    </div>
                    <div class="post-content-container">
                        <div class="content-top-container">
                            <div class="user-id-area">
                                <p>@moondonghwan</p>
                            </div>
                            <div class="post-title-area">
                                <p>??????????????? ??????????????? ??????</p>
                            </div>
                        </div>
                        <div class="content-bottom-container">
                            <div class="post-response-area">
                                <div class="post-like-container">
                                    <div class="post-like-img-container">
                                        <img src="../../../../resources/img/mypage/Related_Post/like.png">
                                    </div>
                                    <div class="post-like-amount-container">
                                        <p>3</p>
                                    </div>
                                </div>
                                <div class="post-comment-container">
                                    <div class="post-comment-img-container">
                                        <img src="../../../../resources/img/mypage/Related_Post/comment.png">
                                    </div>
                                    <div class="post-comment-amount-container">
                                        <p>3</p>
                                    </div>
                                </div>
                            </div>
                            <div class="product-img-container">
                                <div class="product-thumb-container">
                                    <img src="" alt="No Image Here" class="product-thumb-img">
                                </div>
                                <div class="product-thumb-container">
                                    <img src="" alt="No Image Here" class="product-thumb-img">
                                </div>
                                <div class="product-thumb-container">
                                    <img src="" alt="No Image Here" class="product-thumb-img">
                                </div>
                                <div class="product-thumb-container">
                                    <img src="" alt="No Image Here" class="product-thumb-img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="comments-container">
                    <div class="comments-area">
                        <div class="comments-text-area">
                            <p>??????</p>
                        </div>
                        <!-- ?????? ??? ??? ?????? -->
                        <div class="comments">
                            <div class="profile-thumb-container">
                                <img src="" alt="No Image Here" class="profile-thumb-img">
                            </div>
                            <div class="comments-center-container">
                                <div class="user-id-area">
                                    <p>@kimdaegun</p>
                                </div>
                                <div class="comments-content-area">
                                    <p>?????? ?????? ?????????~~~~~~~~~~</p>
                                </div>
                                <div class="comments-bottom-container">
                                    <div class="like-number-area">
                                        <p>????????? 3???</p>
                                    </div>
                                    <div class="comments-period-area">
                                        <p>3??? ???</p>
                                    </div>
                                </div>
                            </div>
                            <div class="like-container">
                                <a href=""><img src="../../../../resources/img/mypage/Related_Post/unlike.png"></a>
                            </div>
                        </div>
                        <!-- ?????? ??? ??? ??? -->
                        <div class="comments">
                            <div class="profile-thumb-container">
                                <img src="" alt="No Image Here" class="profile-thumb-img">
                            </div>
                            <div class="comments-center-container">
                                <div class="user-id-area">
                                    <p>@kimdaegun</p>
                                </div>
                                <div class="comments-content-area">
                                    <p>?????? ?????? ?????????~~~~~~~~~~</p>
                                </div>
                                <div class="comments-bottom-container">
                                    <div class="like-number-area">
                                        <p>????????? 3???</p>
                                    </div>
                                    <div class="comments-period-area">
                                        <p>3??? ???</p>
                                    </div>
                                </div>
                            </div>
                            <div class="like-container">
                                <a href=""><img src="../../../../resources/img/mypage/Related_Post/unlike.png"></a>
                            </div>
                        </div>
                        <div class="comments">
                            <div class="profile-thumb-container">
                                <img src="" alt="No Image Here" class="profile-thumb-img">
                            </div>
                            <div class="comments-center-container">
                                <div class="user-id-area">
                                    <p>@kimdaegun</p>
                                </div>
                                <div class="comments-content-area">
                                    <p>?????? ?????? ?????????~~~~~~~~~~</p>
                                </div>
                                <div class="comments-bottom-container">
                                    <div class="like-number-area">
                                        <p>????????? 3???</p>
                                    </div>
                                    <div class="comments-period-area">
                                        <p>3??? ???</p>
                                    </div>
                                </div>
                            </div>
                            <div class="like-container">
                                <a href=""><img src="../../../../resources/img/mypage/Related_Post/unlike.png""></a>
                    </div>
                </div>
            </div>
            <div class=" wirte-comments-container">
                                    <div class="write-comments-area">
                                        <input type="text" placeholder="?????? ????????????." onfocus="this.placeholder=''"
                                            onblur="this.placeholder='?????? ????????????.'">
                                    </div>
                                    <div class="register-comments-btn">
                                        <button>????????????</button>
                                    </div>
                            </div>
                        </div>
                        <div class="related-post-container">
                            <div class="related-post-text">
                                <p>?????? ?????????</p>
                            </div>
                            <div class="posting-card-row-bundle-container">
                                <!-- ?????? ??? ??? ?????? -->
                                <div class="post-card-container">
                                    <div class="post-thumb-container">
                                        <img src="" alt="No Image Here" class="post-thumb-img">
                                    </div>
                                    <div class="post-content-container">
                                        <div class="user-id-area">
                                            <p>@kimchi</p>
                                        </div>
                                        <div class="post-title-area">
                                            <p>????????? ???????????? ???????????????.</p>
                                        </div>
                                        <div class="post-response-area">
                                            <div class="post-like-container">
                                                <div class="post-like-img-container">
                                                    <img src="../../../../resources/img/mypage/Related_Post/like.png">
                                                </div>
                                                <div class="post-like-amount-container">
                                                    <p>3</p>
                                                </div>
                                            </div>
                                            <div class="post-comment-container">
                                                <div class="post-comment-img-container">
                                                    <img src="../../../../resources/img/mypage/Related_Post/comment.png">
                                                </div>
                                                <div class="post-comment-amount-container">
                                                    <p>3</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-img-container">
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- ?????? ??? ??? ??? -->
                                <div class="post-card-container">
                                    <div class="post-thumb-container">
                                        <img src="" alt="No Image Here" class="post-thumb-img">
                                    </div>
                                    <div class="post-content-container">
                                        <div class="user-id-area">
                                            <p>@kimchi</p>
                                        </div>
                                        <div class="post-title-area">
                                            <p>????????? ???????????? ???????????????.</p>
                                        </div>
                                        <div class="post-response-area">
                                            <p>(??????) 12 (??????) 2</p>
                                        </div>
                                        <div class="product-img-container">
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="post-card-container">
                                    <div class="post-thumb-container">
                                        <img src="" alt="No Image Here" class="post-thumb-img">
                                    </div>
                                    <div class="post-content-container">
                                        <div class="user-id-area">
                                            <p>@kimchi</p>
                                        </div>
                                        <div class="post-title-area">
                                            <p>????????? ???????????? ???????????????.</p>
                                        </div>
                                        <div class="post-response-area">
                                            <p>(??????) 12 (??????) 2</p>
                                        </div>
                                        <div class="product-img-container">
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="post-card-container">
                                    <div class="post-thumb-container">
                                        <img src="" alt="No Image Here" class="post-thumb-img">
                                    </div>
                                    <div class="post-content-container">
                                        <div class="user-id-area">
                                            <p>@kimchi</p>
                                        </div>
                                        <div class="post-title-area">
                                            <p>????????? ???????????? ???????????????.</p>
                                        </div>
                                        <div class="post-response-area">
                                            <p>(??????) 12 (??????) 2</p>
                                        </div>
                                        <div class="product-img-container">
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                            <div class="product-thumb-container">
                                                <img src="" alt="No Image Here" class="product-thumb-img">
                                            </div>
                                        </div>
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
                    </script>
        </body>

        </html>