<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Purchase Histroy Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../../../../resources/css/mypage/Purchase-History/style.css">
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
                <div class="main-top-container">
                    <div class="side-menu">
                        <div class="shopping-info-container">
                            <div class="shopping-info-area">
                                <p>????????????</p>
                                <a href="/Purchase-History" class="shopping-purchased">????????????<br></a>
                                <a href="/Baguni" class="shopping-cart">????????????<br></a>
                                <a href="/Like" class="shopping-like">?????????</a>
                            </div>
                        </div>
                        <div class="member-info-container">
                            <div class="member-info-area">
                                <p>????????????</p>
                                <a href="/Shipping" class="member-delivery">???????????????<br></a>
                                <a href="/Payment" class="member-payment">??????????????????</a>
                            </div>
                        </div>
                    </div>
                    <div class="profile-card-container">
                        <div class="profile-thumb-container">
                            <img src="resources/user-images/${userDetail.savedFileName}" alt="No Image Here" class="profile-thumb-img">
                        </div>
                        <div class="profile-content-container">
                            <div class="content-top-container">
                                <div class="user-name-area">
                                    <p><c:out value="${userDetail.name}" /> ???</p>
                                </div>
                                <div class="user-id-area">
                                    <p>@<c:out value="${userDetail.searchId}" /></p>
                                </div>
                            </div>
                            <div class="content-bottom-container">
                                <div class="purchace-amount-area">
                                    <p>??? ????????????</p>
                                    <p><span class="totalPrice" id="changeNumber"><c:out value="${userDetail.totalPrice}" /></span> &#8361;</p>
                                </div>
                                <div class="profile-btn-area">
                                    <button class="profile-edit-btn" onclick="MovePageSujeong()">????????? ????????????</button>
                                   <button class="writing-btn" onclick="moveWritePage()" >?????????</button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="purchase-history-container">
                    <p class="purchase-history-text">????????????</p>
                    <!-- ???????????? ?????? ?????? -->
                    <c:forEach var="item" items="${orders}" varStatus="index">
                        <div class="purchase-history-card-container">
                            <div class="product-thumb-container">
                                <img src="resources/product-image/${item.thumbSavedFileName}" alt="No Image Here" class="profile-thumb-img">
                            </div>
                            <div class="product-content-container">
                                <div class="product-brand-area">
                                    <p><c:out value="${item.brandName}" /></p>
                                </div>
                                <div class="product-name-area">
                                    <p><c:out value="${item.productName}" /></p>
                                </div>
                                <div class="content-quantity-container">
                                    <div class="purchace-amount-area">
                                        <p><c:out value="${item.count}" />??? <span class="productPrice" id="changeNumber"><c:out value="${item.productPrice}" /></span> &#8361;</p>
                                    </div>
                                </div>
                            </div>
                            <div class="delivery-status-container">
                                <p>????????????</p>
                                <p><c:out value="${item.status}" /></p>
                            </div>
                            <div class="order-date-container">
                                <p>?????????</p>
                                <p><c:out value="${item.createdDate}" /></p>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- ???????????? ?????? ??? -->
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
                let totalPrice = document.querySelector('.totalPrice')
                let productPrices = document.querySelectorAll('.productPrice')

                $(function() {
                    let changeTotalPrice = priceNumberFormat(totalPrice.innerHTML)

                    totalPrice.innerHTML = changeTotalPrice

                    productPrices.forEach(item => {
                        let changePrice = priceNumberFormat(item.innerHTML)
                        item.innerHTML = changePrice
                    })
                })

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

                function moveWritePage(){

                    location.href="/SelectProduct";
                }


                function MovePageSujeong(){

                location.href="/edit-profile";

                }

                function priceNumberFormat(price) {
                    let formattedPrice = price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");;
                    return formattedPrice;
                }
            </script>
        </body>

        </html>