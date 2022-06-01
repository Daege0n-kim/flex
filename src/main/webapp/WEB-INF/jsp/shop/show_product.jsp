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
      <a href="#" title="Logo"><img src="../../../resources/img/main/logo.png" class="header-logo"></a>
        <nav>
          <a href="">STYLE</a> <a href="">SHOP</a> <a href="">ABOUT</a> <a href="">SIGN IN</a>
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
          <c:forEach var="sex" items="${sex}" varStatus="status">
            <li class="left-list-item" id="${sex.sexIndex}"><c:out value="${sex.sex}" /></li>
          </c:forEach>
        </ul>
      </div>
      <div class="item-container">
        <div class="item-info-container">
          <img src="/resources/product-image/${product.thumbSrc}" alt="" class="product-img">
          <div class="product-info-area">
            <div class="item-info-text">
              <div class="item-brand"> <c:out value="${product.productBrand}" /> </div>
              <div class="item-name"> <c:out value="${product.productName}" /> </div>
            </div>
            <div class="item-ctn-btn">
              <div class="item-price"> <span id="item-price"><c:out value="${product.productPrice}" /></span> ₩ </div>
              <div class="btn-group">
                <span class="span-btn">입찰하기</span>
                <span class="span-btn">구매하기</span>
              </div>
            </div>
          </div>
        </div>
        <div class="sub-btn-container">
          <div class="sub-btn-group">
            <span class="span-btn">장바구니</span>
            <span class="span-btn">좋아요</span>
          </div>
        </div>
        <div class="item-detail-img-container">
          <img src="/resources/product-image/${product.detailSrc}" alt="" class="product-detail-img">
        </div>

        <div class="board-list-container">
          <h1>STYLE</h1>
          <div class="board-list">
            <div class="board-card">
              <img src="" alt="" class="board-thumb">
              <div class="board-info-area">
                <span class="user-id"></span>
                <span class="board-title"></span>
                <span class="like"></span>
                <span class="comment-count"></span>
                <div class="related-product-group">
                  <img src="" alt="" class="related-product">
                  <img src="" alt="" class="related-product">
                  <img src="" alt="" class="related-product">
                  <img src="" alt="" class="related-product">
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
    </div>

  </div>

  <footer>
    <div class="footer-cont">
      <img src="../../../resources/img/main/logo.png" alt="footer-logo" style="padding-bottom:50px">
      <p>이용안내 | 검수기준 | 이용정책 | 패널티 정책 | 커뮤니티 가이드라인</p>
      <p>회사소개 인재채용 제휴제안 이용약관 개인정보처리방침</p>
      <a>크림 주식회사 . 대표김창욱사업자등록번호:570-88-01618사업자정보확인통신판매업:제 2021-성남분당C-0093호<a><br>
      <a>사업장소재지:경기도 성남시 분당구 분당내곡로 117, 8층개인정보관리책임자:김미진호스팅 서비스:네이버 클라우드 (주)</a><br><br>
      <a>크림(주)는 통신판매 중개자로서 통신판매의 당사자가 아니므로 개별 판매자가 등록한 상품정보에 대해서 책임을 지지 않습니다.</a><br>
      <a> 단, 거래과정에서 검수하고 보증하는 내용에 대한 책임은 당사에 있습니다.</a>
    </div>
  </footer>

  <script>
    $(function() {
      var price = document.querySelector('#item-price');
      let leftItems = document.querySelectorAll('.left-list-item');
      let checkedSearchCategoryIndex = [];
      let checkedSearchCategoryValues = [];

      console.log(leftItems)

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
  </script>
</body>
</html>