<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../../resources/css/shop/productDetailStyle.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
  <title>Show Product</title>
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

  <p class="shop-text">station</p>

  <div class="main-container">

    <div class="nav-menu-area">
      <ul class="nav-menu-list">
        <li class="nav-menu-item li-btn">new arrive</li>
        <li class="nav-menu-item li-btn">md's pick</li>
        <li class="nav-menu-item li-btn">event</li>
      </ul>
    </div>

    <div class="main-item-container">
      <div class="left-menu-container">
        <ul class="left-menu">
          <span>Category</span>
          <c:forEach var="category" items="${categories}" varStatus="status">
            <li class="left-list-item" id="${category.categoryIndex}"><c:out value="${category.categoryName}" /></li>
          </c:forEach>
        </ul>
        <ul class="left-menu">
          <span>Brand</span>
          <c:forEach var="brand" items="${brands}" varStatus="status">
            <li class="left-list-item" id="${brand.brandIndex}"><c:out value="${brand.brandName}" /></li>
          </c:forEach>
        </ul>
        <ul class="left-menu">
          <span>Sex</span>
          <c:forEach var="data" items="${gender}" varStatus="status">
            <li class="left-list-item" id="${data.genderIndex}"><c:out value="${data.genderName}" /></li>
          </c:forEach>
        </ul>
      </div>
      <div class="item-container">
        <div class="item-info-container">
          <img src="/resources/product-image/${product.thumbSavedFileName}" alt="" class="product-img">
          <div class="product-info-area">
            <div class="item-info-text">
              <div class="item-brand"> <c:out value="${product.brandName}" /> </div>
              <div class="item-name"> <c:out value="${product.productName}" /> </div>
            </div>
            <div class="item-ctn-btn">
              <div class="item-price"> <span id="item-price"><c:out value="${product.productPrice}" /></span> ??? </div>
              <div class="btn-group">
                <span class="span-btn">????????????</span>
                <span class="span-btn" id="purchase" onclick="purchase(`${product.productIndex}`)">????????????</span>
              </div>
            </div>
          </div>
        </div>
        <div class="sub-btn-container">
          <div class="sub-btn-group">
            <span class="span-btn" onclick="addToCart(`${product.productIndex}`)">????????????</span>
            <c:if test="${product.likeIndex == -1}">
              <span class="span-btn" id="likeBtn" onclick="addLike(`${product.productIndex}`)">?????????</span>
            </c:if>
            <c:if test="${product.likeIndex != -1}">
              <span class="span-btn liked" id="likeBtn" onclick="addLike(`${product.productIndex}`)">?????????</span>
            </c:if>
          </div>
        </div>
        <div class="item-detail-img-container">
          <img src="/resources/product-image/${product.detailSavedFileName}" alt="" class="product-detail-img">
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
      <a>?????? ???????????? . ????????????????????????????????????:570-88-01618????????????????????????????????????:??? 2021-????????????C-0093???<a><br>
      <a>??????????????????:????????? ????????? ????????? ??????????????? 117, 8??????????????????????????????:?????????????????? ?????????:????????? ???????????? (???)</a><br><br>
      <a>??????(???)??? ???????????? ??????????????? ??????????????? ???????????? ???????????? ?????? ???????????? ????????? ??????????????? ????????? ????????? ?????? ????????????.</a><br>
      <a> ???, ?????????????????? ???????????? ???????????? ????????? ?????? ????????? ????????? ????????????.</a>
    </div>
  </footer>

  <script>
    $(function() {
      var price = document.querySelector('#item-price');
      let leftItems = document.querySelectorAll('.left-list-item');
      let checkedSearchCategoryIndex = [];
      let checkedSearchCategoryValues = [];

      leftItems.forEach((item) => {
        item.addEventListener("click", () => {
          if(item.classList.contains("clicked")){ 
            checkedSearchCategoryIndex.pop(item.getAttribute('id'));
            checkedSearchCategoryValues.pop(item.innerHTML);
            item.classList.toggle("clicked");
          } else {
            checkedSearchCategoryIndex.push(item.getAttribute('id'));
            checkedSearchCategoryValues.push(item.innerHTML);
            item.classList.toggle("clicked");
          }

          console.log(checkedSearchCategoryValues)
        });

      });

      str = String(price.innerHTML);
      var replacePrice = str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
      price.innerHTML = replacePrice;
    })

    function purchase(productIndex) {
      location.href="/purchase?productIndex=" + productIndex
    }

    function addLike(productIndex) {
      let likeBtn = document.querySelector('#likeBtn');

      $.ajax({
        url: "/addLike",
        type: "get",
        data: {
          productIndex: productIndex
        },
        success: (res) => {
          switch (res) {
            case 'liked':
              likeBtn.classList.add(res)
              break;
              case 'unLike':
                likeBtn.classList.remove('liked')
              break;
            default:
              alert(res)
              break;
          }
        },
        error: () => {
          alert("fail");
        }
      })
    }

    function addToCart(productIndex) {
      $.ajax({
        url: "/addToCart",
        type: "get",
        data: {
          productIndex: productIndex
        },
        success: res => {
          location.href = "/Baguni"
        }
      })
    }
  </script>
</body>
</html>