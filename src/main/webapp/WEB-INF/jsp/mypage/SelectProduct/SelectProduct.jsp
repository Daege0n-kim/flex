<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Writing Page</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="../../../../resources/css/mypage/SelectProduct/style.css">
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
                <form action="/upload-post" method="post" id="form" enctype="multipart/form-data">
                <div class="big-post-card-container">
                    <div class="big-thumb-container">
                        <input type="file" name="postSavedFile" id="profileImage" onchange="readImage(this)">
                        <img src="" id="imageTag"  alt="No Image Here" class="profile-thumb-img">
                    </div>
                    <div class="post-content-container">
                        <div class="content-top-container">
                            <div class="user-id-area">
                                <p>@<c:out value="${userDetail.searchId}" /></p>
                            </div>
                            <div class="enter-phrase-area">
                                <textarea placeholder="???????????????." name="postContent" maxlength="50" onfocus="this.placeholder=''"
                                    onblur="this.placeholder='???????????????.'"></textarea>
                            </div>
                        </div>
                        <div class="content-bottom-container">
                            <div class="product-img-container">
                                <div class="product-thumb-container">
                                    <input type="hidden" name="productIndex" id="hiddenPreview">
                                    <img src="" alt="No Image Here" id="preview" class="product-thumb-img">
                                </div>
                                <div class="product-thumb-container">
                                    <input type="hidden" name="productIndex" id="hiddenPreview">
                                    <img src="" alt="No Image Here" id="preview" class="product-thumb-img">
                                </div>
                                <div class="product-thumb-container">
                                    <input type="hidden" name="productIndex" id="hiddenPreview">
                                    <img src="" alt="No Image Here" id="preview" class="product-thumb-img">
                                </div>
                                <div class="product-thumb-container">
                                    <input type="hidden" name="productIndex" id="hiddenPreview">
                                    <img src="" alt="No Image Here" id="preview" class="product-thumb-img">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="products-upload-container">
                    <div class="related-products-text-area">
                        <p>?????? ?????? ??????</p>
                    </div>
                    <div class="upload-btn-area">
                        <button class="upload-btn" onclick="uploadPost()">?????????</button>
                    </div>
                </div>
            </form>
                <div class="related-products-container">
                    <div class="search-products-container">
                        <div class="search-products-area">
                            <input type="text" placeholder="?????? ?????????." onfocus="this.placeholder=''"
                                onblur="this.placeholder='?????? ?????????.'" id="searchKey">
                        </div>
                        <div class="search-products-btn">
                            <button onclick="searchProduct()">????????????</button>
                        </div>
                    </div>
                    <div class="products-list-container">
                        <div class="products-list-bundle-container" id="itemContainer">
                            <!-- ?????? ??? ??? ?????? -->
                            <c:forEach var="item" items="${products}" varStatus="index">
                                <div class="products-add-card-container">
                                    <div class="products-thumb-container">
                                        <img src="resources/product-image/${item.thumbSavedFileName}" alt="No Image Here" class="product-thumb-img ${item.productIndex}">
                                    </div>
                                    <div class="products-info-container">
                                        <div class="products-brand-area">
                                            <p><c:out value="${item.brandName}" /></p>
                                        </div>
                                        <div class="products-name-area">
                                            <p><c:out value="${item.productName}" /></p>
                                        </div>
                                    </div>
                                    <div class="products-select-container">
                                        <input type="checkbox" id="checkBox${item.productIndex}" onclick="checkItem(this)">
                                    </div>
                                </div>
                            </c:forEach>
                            <!-- ?????? ??? ??? ??? -->
                        </div>
                        <div class="select-area">
                            <button class="add-btn">????????????</button>
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
                let imageArr = []
                let preViews = []
                let hiddenPreview = []
                let preViewIndex = 0;

                topBtn.addEventListener('click', e => {
                    window.scrollTo(0, 0);
                });

                $(function() {
                    preViews = document.querySelectorAll("#preview")
                    hiddenPreview = document.querySelectorAll("#hiddenPreview")

                    console.log(hiddenPreview)
                })

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

                function searchProduct() {
                    let searchKey = $("#searchKey").val()

                    $.ajax({
                        url: "/searchProductBySearchKey",
                        type: "post",
                        dataType:"JSON",
                        data: {
                            searchKey: searchKey
                        },
                        success: res => {
                            const itemContainer = $('#itemContainer')

                            itemContainer.get(0).innerHTML = ''

                            res.forEach(element => {
                                let data = `
                                    <div class="products-add-card-container">
                                        <div class="products-thumb-container">
                                            <img src="resources/product-image/` + element.thumbSavedFileName + `" alt="No Image Here" class="product-thumb-img` + element.productIndex + `">
                                        </div>
                                        <div class="products-info-container">
                                            <div class="products-brand-area">
                                                <p><c:out value="` + element.brandName + `" /></p>
                                            </div>
                                            <div class="products-name-area">
                                                <p><c:out value="` + element.productName + `" /></p>
                                            </div>
                                        </div>
                                        <div class="products-select-container">
                                            <input type="checkbox" id="checkBox` + element.productIndex + `" onclick="checkItem(this)">
                                        </div>
                                    </div>
                                `;

                                itemContainer.get(0).innerHTML += data
                            });

                        },
                        error: () => {
                            alert("Fail")
                        }
                    })
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

                function checkItem(target) {
                    let productIndex = target.id.substr(8)
                    let image = $('.' + productIndex).attr("src")

                    if(imageArr.length == 4) {
                        alert('?????? ????????? ?????? 4????????? ?????? ???????????????.')
                        return
                    } else {
                        preViews[preViewIndex].src = image
                        hiddenPreview[preViewIndex].setAttribute('value', productIndex)
                        preViewIndex++
                    }
                    
                }

                function uploadPost() {
                    const form = document.querySelector("#form")

                    form.submit();
                }
            </script>
        </body>

        </html>