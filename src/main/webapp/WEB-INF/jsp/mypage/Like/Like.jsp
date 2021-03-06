<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Like Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../../../../resources/css/mypage/Like/style.css">
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
                                    <p id="productPrice"><c:out value="${userDetail.totalPrice}" /> &#8361;</p>
                                </div>
                                <div class="profile-btn-area">
                                    <button class="profile-edit-btn" onclick="MovePageSujeong()">????????? ????????????</button>
                                    <button class="writing-btn" onclick="moveWritePage()">?????????</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cart-container">
                    <p class="like-text">?????????</p>
                    <!-- ???????????? ?????? ?????? -->
                    <c:forEach var="like" items="${likes}" varStatus="status">
                        <div class="check-cart-container">
                            <input type="checkbox" id="checkBx" onchange="addToList(`${like.likeIndex}`)">
                            <input type="hidden" id="hiddenVal" value="${like.likeIndex}">
                            <div class="cart-card-container">
                                <div class="product-thumb-container">
                                    <img src="/resources/product-image/${like.thumbSavedFileName}" alt="No Image Here" class="profile-thumb-img">
                                </div>
                                <div class="product-content-container">
                                    <div class="product-brand-area">
                                        <p><c:out value="${like.brandName}" /></p>
                                    </div>
                                    <div class="product-name-area">
                                        <p><c:out value="${like.productName}" /></p>
                                    </div>
                                    <div class="purchase-price-container">
                                        <div class="purchace-amount-area">
                                            <p id="productPrice"><c:out value="${like.productPrice}" /> &#8361;</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="put-cart-container">
                                    <button class="cart-btn" onclick="addToCart(`${like.likeIndex}`, `${like.productIndex}`)">???????????? ??????</button>
                                </div>
                                <div class="delete-container">
                                    <button class="delete-btn" onclick="deleteFromLike(`${like.likeIndex}`)">????????????</button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- ???????????? ?????? ??? -->
                    <div class="select-area">
                        <input type="checkbox" onclick="checkAll()"><label>???????????? ??????</label>
                        <button class="overall-cart-btn" onclick="addToCartAll()">???????????? ??????</button>
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
                let addCartArray = []
                let checkFlag = false
                $(function(){
                    let prices = document.querySelectorAll('#productPrice');
                    let checkBxs = document.querySelectorAll('#checkBx');
                    
                    checkBxs.forEach(item => {
                        console.log(item.checked)
                    })

                    prices.forEach(ele => {
                        ele.innerHTML = priceNumberFormat(ele.innerHTML)
                    })
                })

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

                function moveWritePage() {

                    location.href = "/SelectProduct";
                }


                function MovePageSujeong() {

                    location.href = "/edit-profile";

                }

                function priceNumberFormat(price) {
                    let formattedPrice = price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");;
                    return formattedPrice;
                }

                function deleteFromLike(likeIndex) {
                    $.ajax({
                        url: "/deleteFromLike",
                        type: "get",
                        data: {
                            likeIndex: likeIndex
                        },
                        success: () => {
                            location.href = "/Like"
                        },
                        error: () => {
                            location.href = "/Like"
                        }
                    })
                }

                function addToCart(likeIndex, productIndex) {
                    $.ajax({
                        url: "/addToCartFromLike",
                        type: "post",
                        data: {
                            likeIndex: likeIndex,
                            productIndex: productIndex
                        },
                        dataType: 'json',
                        success: () => {
                            location.href = "/Baguni"
                        },
                        error: () => {
                            location.href = "/Baguni"
                        }
                    })
                }

                function addToList(likeIndex) {
                    let r = addCartArray.find(item => {
                        return item === likeIndex
                    }) 

                    if(typeof r == "undefined" || r == null || r == "") addCartArray.push(likeIndex)
                    else addCartArray.pop(likeIndex)

                    console.log(addCartArray)
                }

                function checkAll() {
                    let likes = document.querySelectorAll('#hiddenVal')
                    let checkBxs = document.querySelectorAll('#checkBx');

                    if(checkFlag) {
                        checkBxs.forEach(item => {
                            item.checked = false
                        })
                        addCartArray.length = 0;
                        checkFlag = false
                    } else {
                        likes.forEach( (item, index) => {
                            checkBxs[index].checked = true
                            let flag = addCartArray.includes(item.value)
                            if(flag) {
                                return
                            } else {
                                addCartArray.push(item.value)
                            }
                        })
                        checkFlag = true
                    }

                    console.log(addCartArray)
                }

                function addToCartAll() {
                    let requestData = []

                    if(addCartArray.length == 0) {
                        alert("????????? ????????? ????????????.")
                        return
                    }

                    addCartArray.forEach(item => {
                        requestData.push({
                            likeIndex: item
                        })
                    })

                    let requestForm = JSON.stringify(requestData)

                    $.ajax({
                        url: "/addToCartAll",
                        type: "post",
                        data: requestForm,
                        contentType:'application/json; charset=UTF-8',
                        dataType:"json",
                        success: (res) => {
                            location.href = "/Baguni"
                        },
                        error: () => {
                            location.href = "/Baguni"
                        }
                    })
                }
            </script>
        </body>

        </html>