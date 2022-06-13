<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Payment Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/css/shop/purchase.css">
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
            <a href="#" title="Logo"><img src="resources/img/main/logo.png" class="header-logo"></a>
            <nav>
                <a href="">STYLE</a> <a href="">SHOP</a> <a href="">ABOUT</a> <a href="">SIGN IN</a>
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
        <div class="add-destination-container">
            <div class="container-top">
                <div class="form-logo">
                    <img src="resources/img/main/logo.png" class="form-logo-img">
                </div>
                <div class="add-payment-txt">
                    <p>결제하기</p>
                </div>
            </div>
            <div class="container-middle">
                <div style="margin-bottom: 3rem;">
                    <p>가격 : <span id="totalPrice"><c:out value="${totalPrice}" /></span> </p>
                </div>
                <div class="card-select">
                    <p>결제수단 선택</p>
                    <select name="job">
                        <c:forEach var="payment" items="${payments}" varStatus="status">
                            <option ><c:out value="${payment.paymentBank}" /></option>
                        </c:forEach>
                    </select>
                </div>
                <c:if test="${not empty defaultPayment}">
                    <div class="card-campany">
                        <p>카드사</p>
                        <input type="text" value="${defaultPayment.paymentBank}">
                    </div>
                    <div class="card-number">
                        <p>카드번호</p>
                        <div class="card-num-input">
                            <input type="text" maxlength="12" name="account" placeholder="-제외 입력" value="${defaultPayment.account}">
                        </div>
                    </div>
                    <div class="cvc-number">
                        <p>CVC</p>
                        <input type="text" maxlength="3" value="${defaultPayment.cvc}">
                    </div>
                </c:if>
                <c:if test="${empty defaultPayment}">
                    <div class="card-campany">
                        <p>카드사</p>
                        <input type="text">
                    </div>
                    <div class="card-number">
                        <p>카드번호</p>
                        <div class="card-num-input">
                            <input type="text" maxlength="12" name="account" placeholder="-제외 입력">
                        </div>
                    </div>
                    <div class="cvc-number">
                        <p>CVC</p>
                        <input type="text" maxlength="3">
                    </div>
                </c:if>
            </div>
            <div class="container-bottom">
                <div class="add-default-payment">
                    <input type="checkbox"><label>기본 결제수단으로 결제</label>
                </div>
                <div class="btn-area">
                    <button class="add-btn">결제하기</button>
                </div>
            </div>
        </div>
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

        $(function(){
            const totalPrice = document.querySelector("#totalPrice")

            let priceFormat = priceNumberFormat(totalPrice.innerHTML)

            totalPrice.innerHTML = priceFormat
        })

        $(window).scroll(function (e) {
            if (header.offset().top !== 0) {
                if (!header.hasClass('shadow')) {
                    header.addClass('shadow');
                }
            } else {
                header.removeClass('shadow');
            }
        });

        function priceNumberFormat(price) {
            let formattedPrice = price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");;
            return formattedPrice;
        }
    </script>
</body>

</html>