<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>In Transit Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../../../../resources/css/mypage/Baguni/style.css">
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
                    <p class="cart-text">????????????</p>
                    <!-- ???????????? ?????? ?????? -->
                    <c:forEach var="cart" items="${cartLike}" varStatus="status">
                        <input type="hidden" class="hiddenProductIndex${cart.cartIndex}" id="hiddenProductIndex" value="${cart.productIndex}">
                        <input type="hidden" class="hiddenCartCount${cart.cartIndex}" id="hiddenCartCount" value="${cart.cartCount}">
                        <div class="check-cart-container">
                            <input type="checkbox" class="chx${cart.cartIndex}" id="checkBx" onclick="checkItem(`${cart.cartIndex}`, `${cart.productPrice}`)">
                            <input type="hidden" id="hiddenVal" id="${cart.cartIndex}" value="${cart.cartIndex}">
                            <div class="cart-card-container">
                                <div class="product-thumb-container">
                                    <img src="/resources/product-image/${cart.thumbSavedFileName}" alt="No Image Here" class="profile-thumb-img">
                                </div>
                                <div class="product-content-container">
                                    <div class="product-brand-area">
                                        <p><c:out value="${cart.productBrand}" /></p>
                                    </div>
                                    <div class="product-name-area">
                                        <p> <c:out value="${cart.productName}" /> </p>
                                    </div>
                                    <div class="purchase-price-container">
                                        <div class="purchace-amount-area">
                                            <p class="pr${cart.cartIndex}" id="productPrice">
                                                <input type="hidden" id="hiddenItemPrice" value="${cart.productPrice * cart.cartCount}">
                                                <c:out value="${cart.productPrice * cart.cartCount}" /> &#8361;
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="quantity-container">
                                    <a onclick="decrease(`${cart.cartIndex}`, `${cart.productPrice}`)" class="minus">-</a>
                                    <p class="itemPrice" id="num${cart.cartIndex}"><c:out value="${cart.cartCount}" /></p>
                                    <a onclick="increase(`${cart.cartIndex}`, `${cart.productPrice}`)">+</a>
                                </div>
                                <div class="delete-container">
                                    <button class="delete-btn" onclick="deleteCart(`${cart.cartIndex}`)">????????????</button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- ???????????? ?????? ??? -->
                    <div class="select-area">
                        <input type="checkbox" id="checkAllItem" onclick="checkAllItem()"><label>???????????? ??????</label>
                        <button class="ordering-btn" onclick="purchase()">????????????</button>
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
                let checkAllFlag = false
                let totalPrice = 0

                $(function(){
                    let prices = document.querySelectorAll('#productPrice');

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

                function deleteCart(cartIndex) {
                    $.ajax({
                        url: "/deleteCart",
                        type: "get",
                        data: {
                            cartIndex: cartIndex
                        },
                        success: () => {
                            location.href = "/Baguni"
                        },
                        error: () => {
                            location.href = "/Baguni"
                        }
                    })
                }

                function increase(cartIndex, productPrice) {
                    let count = document.querySelector("#num" + cartIndex)
                    let itemPrice = document.querySelector(".pr" + cartIndex)
                    let box = document.querySelector('.chx' + cartIndex)

                    if (box.checked) {
                        alert("?????? ????????? ??????????????? ?????? ????????????.")
                        return
                    }

                    $.ajax({
                        url: "increaseCart",
                        type: "get",
                        data: {
                            cartIndex: cartIndex
                        },
                        success: res => {
                            count.innerHTML = res
                            itemPrice.innerHTML = priceNumberFormat(res * productPrice) + "???"
                        }
                    })
                }

                function decrease(cartIndex, productPrice) {
                    let count = document.querySelector("#num" + cartIndex)
                    let itemPrice = document.querySelector(".pr" + cartIndex)
                    let box = document.querySelector('.chx' + cartIndex)

                    if (box.checked) {
                        alert("?????? ????????? ??????????????? ?????? ????????????.")
                        return
                    }

                    if(count.innerHTML == 1) {
                        alert("??????????????? 1??? ?????????.")
                        return
                    }
                    $.ajax({
                        url: "decreaseCart",
                        type: "get",
                        data: {
                            cartIndex: cartIndex
                        },
                        success: res => {
                            count.innerHTML = res
                            itemPrice.innerHTML = priceNumberFormat(res * productPrice) + "???"
                        }
                    })
                }

                function purchase() {
                    let requestData = []

                    if(requestData === 0) {
                        alert("????????? ????????? ????????????.")
                        return
                    }

                    addCartArray.forEach(item => {
                        requestData.push(item)
                    })
                    
                    if(!confirm(`??? ????????? ` + totalPrice + `??? ?????????. ???????????????????????????????`)) {
                        alert('?????? ??????')
                    } else {
                        let requestForm = JSON.stringify(requestData)
                        console.log(requestForm)
                        $.ajax({
                            url: "/purchaseAll",
                            type: "post",
                            data: requestForm,
                            contentType:'application/json; charset=UTF-8',
                            dataType:"json",
                            success: (res) => {
                                location.href = "/purchase?totalPrice=" + res
                            }, 
                            error: () => {
                                location.href = "/purchase"
                            }
                        })
                    }
                }

                function priceNumberFormat(price) {
                    let formattedPrice = price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");;
                    return formattedPrice;
                }

                function checkItem(cartIndex, productPrice) {
                    let count = document.querySelector('#num' + cartIndex)
                    let checkAllItemBx = document.querySelector("#checkAllItem")
                    const hiddenProductIndex = $(".hiddenProductIndex" + cartIndex).val()
                    const hiddenCartCount = $(".hiddenCartCount" + cartIndex).val()

                    if(checkAllItemBx.checked) {
                        alert("?????? ??????????????? ?????? ????????????.")
                        return 
                    } 

                    let r = addCartArray.find(item => {
                        return item.cartIndex === cartIndex
                    }) 

                    let data = {
                        cartIndex: cartIndex,
                        productIndex: hiddenProductIndex,
                        count: hiddenCartCount
                    }

                    if(typeof r == "undefined" || r == null || r == "") {
                        addCartArray.push(data)
                        totalPrice += (productPrice * count.innerHTML)
                    } else {
                        let num = 0
                        addCartArray.forEach(element => {
                            if(element.cartIndex == cartIndex) return num
                            num++
                        });

                        let filtered = addCartArray.filter( ele => {
                            return ele.cartIndex != cartIndex
                        })

                        addCartArray = filtered;
                        totalPrice -= (productPrice * count.innerHTML)
                    }
                }

                function checkAllItem() {
                    let cartItems = document.querySelectorAll('#hiddenVal')
                    let checkBxs = document.querySelectorAll('#checkBx')
                    let prices = document.querySelectorAll('#hiddenItemPrice')

                    let products = document.querySelectorAll("#hiddenProductIndex")
                    let counts = document.querySelectorAll("#hiddenCartCount")

                    let localTotalPrice = 0
                    prices.forEach(item => {
                        let price = item.value

                        const priceRemoveComma = price.replace(/,/g, "");
                        localTotalPrice += Number(priceRemoveComma)
                    })

                    if(checkAllFlag) {
                        checkBxs.forEach(item => {
                            item.checked = false
                        })
                        addCartArray.length = 0;
                        checkAllFlag = false
                        totalPrice = 0
                    } else {
                        cartItems.forEach( (item, index) => {
                            checkBxs[index].checked = true
                            let flag = addCartArray.includes(item.value)
                            if(flag) {
                                return
                            } else {
                                let data = {
                                    cartIndex :item.value,
                                    productIndex : products[index].value,
                                    count : counts[index].value
                                }
                                addCartArray.push(data)
                            }
                        })
                        checkAllFlag = true
                        totalPrice = localTotalPrice
                    }
                }
            </script>
        </body>

        </html>