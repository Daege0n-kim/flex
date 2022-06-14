<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!doctype html>
    <html>

    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Main Page</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
      <link rel="stylesheet" href="../../../resources/css/main/reset.css">
      <link rel="stylesheet" href="../../../resources/css/main/font.css">
      <link rel="stylesheet" href="../../../resources/css/main/style.css">
      <link rel="stylesheet" href="../../../resources/css/main/style-exam.css">
      <link rel="stylesheet" href="../../../resources/css/main/jd-slider.css">
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
      <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
      <script src="../../../resources/js/main/jquery.js"></script>
      <script src="../../../resources/js/main/jquery.jdSlider-latest.min.js"></script>
      <script type="text/javascript"
        src="https://cdn.jsdelivr.net/combine/npm/zepto@1.2.0/dist/zepto.js,npm/zepto@1.2.0/src/fx.js?ver=5.3.2"></script>
      <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/animejs@3.1.0/lib/anime.js?ver=5.3.2"></script>
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

      <div class="content main">
        <section class="jd-slider main-slider main-visual">
          <div class="slide-inner">
            <ul class="slide-area">
              <li>
                <a href="#"><img src="../../../resources/img/main/nocta.png" alt="img01"></a>
              </li>
              <li>
                <a href="#"><img src="../../../resources/img/main/stone.png" alt="img02"></a>
              </li>
              <li>
                <a href="#"><img src="../../../resources/img/main/adidas.png" alt="img03"></a>
              </li>
            </ul>
            <a class="prev" href="#" style="font-size:60px">
              &#10094;
            </a>
            <a class="next" href="#" style="font-size:60px">
              &#10095;
            </a>
          </div>
        </section>
        <div class="side-txt">
          <div class="txt">
            FLEX FOR LIMITED EDITION TRANSACTION
          </div>
        </div>
        

        <!-- Style -->
        <h4 class="tit" style="margin-top:89px">
          &lt; STYLE &gt;
        </h4>
        <div class="card-container">
          <!-- 3개짜리 카드 시작 -->
          <c:forEach var="item" items="${boards}" varStatus="index">
            <a href="/Posting?boardIndex=${item.boardIndex}">
              <div class="post-card-container">
                <div class="post-thumb-container">
                  <img src="resources/board-images/${item.savedFileName}" alt="No Image Here" class="post-thumb-img" onclick="">
                </div>
                <div class="post-content-container">
                  <div class="user-id-area">
                    <p>@ <c:out value="${item.searchId}" /> </p>
                  </div>
                  <div class="post-title-area">
                    <p> <c:out value="${item.boardContent}" /> </p>
                  </div>
                </div>
              </div>
            </a>
          </c:forEach>
          <!-- 3개짜리 카드 끝 -->
        </div>

        <div class="ezkorry-roller"><span>FLEX FOR LIMITED EDITION TRANSACTION </span></div>

        <!-- New Arrive -->
        <h4 class="tit">&lt; NEW ARRIVE &gt;</h4>
        <div class="card-container">
          <!-- 4개짜리 카드 시작 -->
          <c:forEach var="item" items="${products}" varStatus="index">
            <div class="product-card-container">
              <div class="product-thumb-container">
                <img src="resources/product-image/${item.thumbSavedFileName}" alt="No Image Here" class="product-thumb-img">
              </div>
              <div class="product-content-container">
                <div class="product-brand-area">
                  <p> <c:out value="${item.brandName}" /> </p>
                </div>
                <div class="product-name-area">
                  <p> <c:out value="${item.productName}" /> </p>
                </div>
              </div>
            </div>
          </c:forEach>
          <!-- 4개짜리 카드 끝 -->
          </div>
        </div>

        <div class="bannerimg">
          <img src="../../../resources/img/main/nike.png">
        </div>

        <!-- MD's Pick -->
        <h4 class="tit">&lt; MD's Pick &gt;</h4>
        <div class="card-container">
          <!-- 4개짜리 카드 시작 -->
          <c:forEach var="item" items="${productsReverse}" varStatus="index">
            <div class="product-card-container">
              <div class="product-thumb-container">
                <img src="resources/product-image/${item.thumbSavedFileName}" alt="No Image Here" class="product-thumb-img">
              </div>
              <div class="product-content-container">
                <div class="product-brand-area">
                  <p> <c:out value="${item.brandName}" /> </p>
                </div>
                <div class="product-name-area">
                  <p> <c:out value="${item.productName}" /> </p>
                </div>
              </div>
            </div>
          </c:forEach>
          <!-- 4개짜리 카드 끝 -->
        </div>


        <div class="top-btn">
          <img src="resources/img/top-btn.png" alt="">
        </div>

        <!-- Footer -->
        <footer>
          <div class="footer-cont">
            <img src="../../../resources/img/main/logo.png" alt="footer-logo" style="padding-bottom:50px">
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
      </div>

      <!-- Slider Script -->
      <script>
        window.onload = function () {
          $('.main-slider').jdSlider({
            wrap: '.slide-inner',
            isAuto: true,
            isLoop: true
          });
          $('.slider').jdSlider({
            wrap: '.slide-inner',
            slideShow: 4,
            slideToScroll: 1,
            isLoop: true,
            responsive: [{
              viewSize: 768,
              settings: {
                slideShow: 1
              }
            }]
          });

          var topBtn = document.querySelector('.top-btn');

          topBtn.addEventListener('click', e => {
            window.scrollTo(0, 0);
          });

        };

        Zepto(function ($) {
          $(window).on('load', function () {
            $.each($(".ezkorry-roller"), function (index, item) {
              const wrapper = $("<div />", { class: "ezkorry-roller-wrapper" });
              const roller = $(item);
              roller.append(wrapper);
              const span = roller.find('span').first();
              wrapper.append(span);

              const span_width = span.get(0).offsetWidth;
              const max_width = roller.width() + span_width;
              let inner_width = span_width;

              while (max_width > inner_width) {
                wrapper.append(span.clone());
                inner_width += span_width;
              }

              anime({
                targets: wrapper.get(0),
                translateX: {
                  value: '-=' + span_width + 'px',
                  duration: 23000
                },
                loop: true,
                easing: 'linear'
              });
            });
          })
        });
      </script>
    </body>

    </html>