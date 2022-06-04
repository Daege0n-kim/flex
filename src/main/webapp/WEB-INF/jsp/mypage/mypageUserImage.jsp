<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Posting Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../../../resources/css/mypage/UserImage/style.css">
            <script type="text/javascript" src="../../../resources/js/main/jquery.jdSlider-latest.min.js"></script>
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
                    <a href="/home" title="Logo"><img src="../../../resources/img/main/logo.png" alt="logo"></a>
                    <nav>
                        <a href="/style">STYLE</a> <a href="/show_products">SHOP</a> <a href="/about">ABOUT</a>
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

            <p class="mypage-text">MYPAGE</p>

            <div class="side-txt">
                <div class="txt">
                    FLEX FOR LIMITED EDITION TRANSACTION
                </div>
            </div>

            <div class="main-container">

                <div class="main-top-container">
                    <div class="side-menu">
                        <div class="shopping-info-container">
                            <div class="shopping-info-area">
                                <p>쇼핑정보</p>
                                <a href="/Purchase-History" class="shopping-purchased">구매내역<br></a>
                                <a href="/Baguni" class="shopping-cart">장바구니<br></a>
                                <a href="/Like" class="shopping-like">좋아요</a>
                            </div>
                        </div>
                        <div class="member-info-container">
                            <div class="member-info-area">
                                <p>회원정보</p>
                                <a href="/Shipping" class="member-delivery">배송지관리<br></a>
                                <a href="/Payment" class="member-payment">결제수단관리</a>
                            </div>
                        </div>
                    </div>
                    <div class="profile-card-container">
                        <div class="profile-thumb-container">
                            <img src="${path}" alt="No Image Here" class="profile-thumb-img">
                        </div>
                        <div class="profile-content-container">
                            <div class="content-top-container">
                                <div class="user-name-area">
                                    <p>
                                        <c:out value="${userDetail.userName}" />
                                    </p>
                                </div>
                                <div class="user-id-area">
                                    <p>
                                        <c:out value="${userDetail.userId}" />
                                    </p>
                                </div>
                            </div>
                            <div class="content-bottom-container">
                                <div class="purchace-amount-area">
                                    <p>
                                        <c:out value="${userDetail.totalPrice}" />
                                    </p>
                                </div>
                                <div class="profile-btn-area">
                                    <button class="profile-edit-btn" onclick="MovePageSujeong()">프로필 수정하기</button>
                                   <button class="writing-btn" onclick="moveWritePage()" >글쓰기</button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-container">
                    <div class="tab">
                        <div class="tab-wrap">
                            <ul>
                                <li data-id="con1">팔로우</li>
                                <li data-id="con2" class="on">게시물</li>
                                <li data-id="con3">팔로잉</li>
                            </ul>
                        </div>

                        <!-- follow -->
                        <div id="con1" class="conBox">
                            <p class="follw-number">73047명</p>
                            <div class="follow-card-bundle-container">
                                <!-- 카드 한 줄 시작 -->
                                <div class="follow-card-row-bundle-container">
                                    <!-- 카드 한 개 시작 -->
                                    <div class="profile-card-container">
                                        <div class="profile-thumb-container">
                                            <img src="" alt="No Image Here" class="profile-thumb-img">
                                        </div>
                                        <div class="profile-content-container">
                                            <div class="content-top-container">
                                                <div class="user-name-area">
                                                    <p>김대건 님</p>
                                                </div>
                                                <div class="user-id-area">
                                                    <p>@kimdaigun</p>
                                                </div>
                                            </div>
                                            <div class="content-bottom-container">
                                                <div class="purchace-amount-area">
                                                    <p>총 구매금액</p>
                                                    <p>1231,213,304 &#8361;</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 카드 한 개 끝 -->
                                    <div class="profile-card-container">
                                        <div class="profile-thumb-container">
                                            <img src="" alt="No Image Here" class="profile-thumb-img">
                                        </div>
                                        <div class="profile-content-container">
                                            <div class="content-top-container">
                                                <div class="user-name-area">
                                                    <p>김대건 님</p>
                                                </div>
                                                <div class="user-id-area">
                                                    <p>@kimdaigun</p>
                                                </div>
                                            </div>
                                            <div class="content-bottom-container">
                                                <div class="purchace-amount-area">
                                                    <p>총 구매금액</p>
                                                    <p>1231,213,304 &#8361;</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 카드 한 줄 끝 -->
                                <div class="follow-card-row-bundle-container">
                                    <div class="profile-card-container">
                                        <div class="profile-thumb-container">
                                            <img src="" alt="No Image Here" class="profile-thumb-img">
                                        </div>
                                        <div class="profile-content-container">
                                            <div class="content-top-container">
                                                <div class="user-name-area">
                                                    <p>김대건 님</p>
                                                </div>
                                                <div class="user-id-area">
                                                    <p>@kimdaigun</p>
                                                </div>
                                            </div>
                                            <div class="content-bottom-container">
                                                <div class="purchace-amount-area">
                                                    <p>총 구매금액</p>
                                                    <p>1231,213,304 &#8361;</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="profile-card-container">
                                        <div class="profile-thumb-container">
                                            <img src="" alt="No Image Here" class="profile-thumb-img">
                                        </div>
                                        <div class="profile-content-container">
                                            <div class="content-top-container">
                                                <div class="user-name-area">
                                                    <p>김대건 님</p>
                                                </div>
                                                <div class="user-id-area">
                                                    <p>@kimdaigun</p>
                                                </div>
                                            </div>
                                            <div class="content-bottom-container">
                                                <div class="purchace-amount-area">
                                                    <p>총 구매금액</p>
                                                    <p>1231,213,304 &#8361;</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 카드 두 줄 끝 -->
                            </div>
                        </div>

                        <!-- posting -->
                        <div id="con2" class="conBox on">
                            <p class="posting-number">42개</p>
                            <div class="posting-card-bundle-container">
                                <!-- 카드 한 줄 시작 -->
                                <div class="posting-card-row-bundle-container">
                                    <!-- 카드 한 개 시작 -->
                                    <div class="post-card-container">
                                        <div class="post-thumb-container">
                                            <img src="" alt="No Image Here" class="post-thumb-img">
                                        </div>
                                        <div class="post-content-container">
                                            <div class="user-id-area">
                                                <p>@kimchi</p>
                                            </div>
                                            <div class="post-title-area">
                                                <p>봄인줄 알았지만 겨울이었다.</p>
                                            </div>
                                            <div class="post-response-area">
                                                <p>(하트) 12 (댓글) 2</p>
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
                                    <!-- 카드 한 개 끝 -->
                                    <div class="post-card-container">
                                        <div class="post-thumb-container">
                                            <img src="" alt="No Image Here" class="post-thumb-img">
                                        </div>
                                        <div class="post-content-container">
                                            <div class="user-id-area">
                                                <p>@kimchi</p>
                                            </div>
                                            <div class="post-title-area">
                                                <p>봄인줄 알았지만 겨울이었다.</p>
                                            </div>
                                            <div class="post-response-area">
                                                <p>(하트) 12 (댓글) 2</p>
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
                                                <p>봄인줄 알았지만 겨울이었다.</p>
                                            </div>
                                            <div class="post-response-area">
                                                <p>(하트) 12 (댓글) 2</p>
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
                                                <p>봄인줄 알았지만 겨울이었다.</p>
                                            </div>
                                            <div class="post-response-area">
                                                <p>(하트) 12 (댓글) 2</p>
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
                                <!-- 카드 한 줄 끝 -->
                                <div class="posting-card-row-bundle-container">
                                    <div class="post-card-container">
                                        <div class="post-thumb-container">
                                            <img src="" alt="No Image Here" class="post-thumb-img">
                                        </div>
                                        <div class="post-content-container">
                                            <div class="user-id-area">
                                                <p>@kimchi</p>
                                            </div>
                                            <div class="post-title-area">
                                                <p>봄인줄 알았지만 겨울이었다.</p>
                                            </div>
                                            <div class="post-response-area">
                                                <p>(하트) 12 (댓글) 2</p>
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
                                                <p>봄인줄 알았지만 겨울이었다.</p>
                                            </div>
                                            <div class="post-response-area">
                                                <p>(하트) 12 (댓글) 2</p>
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
                                                <p>봄인줄 알았지만 겨울이었다.</p>
                                            </div>
                                            <div class="post-response-area">
                                                <p>(하트) 12 (댓글) 2</p>
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
                                                <p>봄인줄 알았지만 겨울이었다.</p>
                                            </div>
                                            <div class="post-response-area">
                                                <p>(하트) 12 (댓글) 2</p>
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
                        <!-- following -->
                        <div id="con3" class="conBox">
                            <p class="follw-number">747명</p>
                            <div class="follow-card-bundle-container">
                                <!-- 카드 한 줄 시작 -->
                                <div class="follow-card-row-bundle-container">
                                    <!-- 카드 한 개 시작 -->
                                    <div class="profile-card-container">
                                        <div class="profile-thumb-container">
                                            <img src="" alt="No Image Here" class="profile-thumb-img">
                                        </div>
                                        <div class="profile-content-container">
                                            <div class="content-top-container">
                                                <div class="user-name-area">
                                                    <p>김대건 님</p>
                                                </div>
                                                <div class="user-id-area">
                                                    <p>@kimdaigun</p>
                                                </div>
                                            </div>
                                            <div class="content-bottom-container">
                                                <div class="purchace-amount-area">
                                                    <p>총 구매금액</p>
                                                    <p>1231,213,304 &#8361;</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 카드 한 개 끝 -->
                                    <div class="profile-card-container">
                                        <div class="profile-thumb-container">
                                            <img src="" alt="No Image Here" class="profile-thumb-img">
                                        </div>
                                        <div class="profile-content-container">
                                            <div class="content-top-container">
                                                <div class="user-name-area">
                                                    <p>김대건 님</p>
                                                </div>
                                                <div class="user-id-area">
                                                    <p>@kimdaigun</p>
                                                </div>
                                            </div>
                                            <div class="content-bottom-container">
                                                <div class="purchace-amount-area">
                                                    <p>총 구매금액</p>
                                                    <p>1231,213,304 &#8361;</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 카드 한 줄 끝 -->
                                <div class="follow-card-row-bundle-container">
                                    <div class="profile-card-container">
                                        <div class="profile-thumb-container">
                                            <img src="" alt="No Image Here" class="profile-thumb-img">
                                        </div>
                                        <div class="profile-content-container">
                                            <div class="content-top-container">
                                                <div class="user-name-area">
                                                    <p>김대건 님</p>
                                                </div>
                                                <div class="user-id-area">
                                                    <p>@kimdaigun</p>
                                                </div>
                                            </div>
                                            <div class="content-bottom-container">
                                                <div class="purchace-amount-area">
                                                    <p>총 구매금액</p>
                                                    <p>1231,213,304 &#8361;</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="profile-card-container">
                                        <div class="profile-thumb-container">
                                            <img src="" alt="No Image Here" class="profile-thumb-img">
                                        </div>
                                        <div class="profile-content-container">
                                            <div class="content-top-container">
                                                <div class="user-name-area">
                                                    <p>김대건 님</p>
                                                </div>
                                                <div class="user-id-area">
                                                    <p>@kimdaigun</p>
                                                </div>
                                            </div>
                                            <div class="content-bottom-container">
                                                <div class="purchace-amount-area">
                                                    <p>총 구매금액</p>
                                                    <p>1231,213,304 &#8361;</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 카드 두 줄 끝 -->
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
                    // tab 메뉴를 클릭하였을 때 동작함
                    $(".tab ul li").click(function () {

                        // 현재 선택되어있던 메뉴들을 초기화함
                        $(".tab ul li").removeClass('on');
                        $(".tab .conBox").removeClass('on');

                        // 선택된 메뉴에 on 클래스를 주어 표기함
                        $(this).addClass('on');

                        // 선택된 탭의 data 값으로 content box를 선택함
                        $("#" + $(this).data('id')).addClass('on');
                    });
                });

                function moveWritePage(){

                    location.href="/SelectProduct";
                }


                function MovePageSujeong(){

                location.href="";

            }

                    
            </script>
        </body>

        </html>