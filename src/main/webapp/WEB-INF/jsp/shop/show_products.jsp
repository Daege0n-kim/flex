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
    <link rel="stylesheet" href="../../../resources/css/shop/style.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
  <title>Edit Product</title>
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
        <li class="nav-menu-item">new arrive</li>
        <li class="nav-menu-item">md's pick</li>
        <li class="nav-menu-item">event</li>
      </ul>
    </div>

    <div class="inner-container">
      <!-- Data 가져오는 부분 from category, brand, sex TABLES -->
      <div class="left-menu">
        <ul class="left-menu-list">
          <p class="left-list-title">카테고리</p>
          <c:forEach var="category" items="${categories}" varStatus="status">
            <a href=""><li class="left-list-item"><c:out value="${category.categoryName}" /></li></a>
          </c:forEach>
        </ul>
        <ul class="left-menu-list">
          <p class="left-list-title">브랜드</p>
          <c:forEach var="data" items="${brand}" varStatus="status">
            <a href=""><li class="left-list-item"><c:out value="${data.brandName}" /></li></a>
          </c:forEach>
        </ul>
        <ul class="left-menu-list">
          <p class="left-list-title">성별</p>
          <c:forEach var="data" items="${gender}" varStatus="status">
            <a href=""><li class="left-list-item"><c:out value="${data.genderName}" /></li></a>
          </c:forEach>
        </ul>
      </div>
      <!-- Data 가져오는 부분 from category, brand, sex TABLES -->

      <div class="product-container">
        <!-- Data 가져오는 부분 from brand, product, product_image -->
        <c:forEach var="product" items="${products}" varStatus="status">
          <a href="/show_product?productIndex=${product.productIndex}">
          <div class="card">
            <input type="hidden" name="productIndex" value="${product.productIndex}">
            <img src="/resources/product-image/${product.thumbSavedFileName}" alt="" class="card-thumb">
            <div class="card-inform">
              <div class="item-inform">
                <p class="item-brand"><c:out value="${product.brandName}" /></p>
                <p class="item-name"><c:out value="${product.productName}" /></p>
              </div>
              <div class="item-price-area">
                <c:out value="${product.productPrice}" />₩
              </div>
            </div>
          </div>
        </a>
        </c:forEach>
        <!-- Data 가져오는 부분 from brand, product, product_image -->
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
      <a>크림 주식회사 . 대표김창욱사업자등록번호:570-88-01618사업자정보확인통신판매업:제 2021-성남분당C-0093호<a><br>
      <a>사업장소재지:경기도 성남시 분당구 분당내곡로 117, 8층개인정보관리책임자:김미진호스팅 서비스:네이버 클라우드 (주)</a><br><br>
      <a>크림(주)는 통신판매 중개자로서 통신판매의 당사자가 아니므로 개별 판매자가 등록한 상품정보에 대해서 책임을 지지 않습니다.</a><br>
      <a> 단, 거래과정에서 검수하고 보증하는 내용에 대한 책임은 당사에 있습니다.</a>
    </div>
  </footer>

  <!-- <c:forEach var="product" items="${productResponse}" varStatus="status">
    <a href="/show_product/?productIndex=${product.productIndex}">
      <div class="product-card">
        <input type="hidden" name="product_index" value="${product.productIndex}">
        <div class="product-name">
          <span>Product Name : <c:out value="${product.productName}" /></span>
        </div>
        <div class="product-brand">
          <span>Product Brand : <c:out value="${product.productBrand}" /></span>
        </div>
        <div class="product-price">
          <span>Product Price : <c:out value="${product.productPrice}" /></span>
        </div>
        <div class="category-name">
          <span>Category : <c:out value="${product.categoryName}" /></span>
        </div>
        <div class="tuhmb">
          <img src="/resources/product-image/${product.thumbSrc}" alt="" width="100px">
        </div>
        <div class="detal">
          <img src="/resources/product-image/${product.detailSrc}" alt="" width="100px">
        </div>
      </div>
    </a>
  </c:forEach> -->
</body>
</html>