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
        <div class="add-destination-container">
            <div class="container-top">
                <div class="form-logo">
                    <img src="resources/img/main/logo.png" class="form-logo-img">
                </div>
                <div class="add-payment-txt">
                    <p>????????????</p>
                </div>
            </div>
            <div class="container-middle">
                <div style="margin-bottom: 3rem;">
                    <p>?????? : <span id="totalPrice"><c:out value="${totalPrice}" /></span> </p>
                </div>
                <div class="card-select">
                    <p>???????????? ??????</p>
                    <select name="payment" id="paymentWay" onchange="changePayment()">
                        <c:forEach var="payment" items="${payments}" varStatus="status">
                            <option value="${payment.paymentIndex}"><c:out value="${payment.paymentBank}" /></option>
                        </c:forEach>
                    </select>
                </div>
                <c:if test="${not empty defaultPayment}">
                    <input type="hidden" id="hiddenPaymentIndexValue" value="${defaultPayment.paymentIndex}">
                    <div class="card-campany">
                        <p>?????????</p>
                        <input type="text" id="bank" value="${defaultPayment.paymentBank}">
                    </div>
                    <div class="card-number">
                        <p>????????????</p>
                        <div class="card-num-input">
                            <input type="text" id="cardNumber" maxlength="12" name="account" placeholder="-?????? ??????" value="${defaultPayment.account}">
                        </div>
                    </div>
                    <div class="cvc-number">
                        <p>CVC</p>
                        <input type="text" maxlength="3" id="cvc" value="${defaultPayment.cvc}">
                    </div>
                </c:if>
                <c:if test="${empty defaultPayment}">
                    <div class="card-campany">
                        <p>?????????</p>
                        <input type="text">
                    </div>
                    <div class="card-number">
                        <p>????????????</p>
                        <div class="card-num-input">
                            <input type="text" maxlength="12" name="account" placeholder="-?????? ??????">
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
                    <input type="checkbox" id="defaultPayment" onchange="checkDefaultPayment()"><label>?????? ?????????????????? ??????</label>
                </div>
                <div class="btn-area">
                    <button class="add-btn" onclick="purchase()">????????????</button>
                </div>
            </div>
        </div>
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
        let defaultPaymentIndex = -1;

        $(function(){
            let paymentWayTextArea = $("#paymentWay")
            defaultPaymentIndex = $("#hiddenPaymentIndexValue").val()

            paymentWayTextArea.val(defaultPaymentIndex).prop("selected", true)

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

        function changePayment() {
            let paymentWayTextArea = $("#paymentWay");
            let paymentWay = $("#paymentWay option:selected").val()
            let defaultPayment = $("#defaultPayment")
            let bank = $("#bank")
            let cardNumber = $("#cardNumber")
            let cvc = $("#cvc")

            if(defaultPayment.is(':checked')) {
                alert("?????? ???????????? ????????? ??????????????????.");
                paymentWayTextArea.val(defaultPaymentIndex).prop("selected", true)
                return
            } else {
                $.ajax({
                    url: "/selectPaymentByPaymentIndex",
                    type: "post",
                    data: {
                        paymentIndex: paymentWay
                    },
                    success: res => {
                        bank.val(res.paymentBank)
                        cardNumber.val(res.account)
                        cvc.val(res.cvc)
                    },
                    error: () => {
                        alert("e")
                    }
                })
            }
        }

        function checkDefaultPayment() {
            let paymentWayTextArea = $("#paymentWay")
            let defaultPayment = $("#defaultPayment")
            let bank = $("#bank")
            let cardNumber = $("#cardNumber")
            let cvc = $("#cvc")

            $.ajax({
                url: "/getDefaultPayment",
                type: "post",
                success: res => {
                    paymentWayTextArea.val(res.paymentIndex).prop("selected", true)
                    bank.val(res.paymentBank)
                    cardNumber.val(res.account)
                    cvc.val(res.cvc)
                }
            })
        }

        function purchase() {
            const totalPrice = document.querySelector("#totalPrice")
            let price = totalPrice.innerHTML.replace(/,/g, "");

            $.ajax({
                url: "/addTotalPrice",
                type: "post",
                data: {
                    totalPrice: price
                },
                success: () => {
                    location.href = "/Purchase-History"
                },
                error: () => {
                    location.href = "/Purchase-History"
                }
            })
        }
    </script>
</body>

</html>