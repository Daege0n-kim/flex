<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../../resources/css/mypage/style.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
  <title>My Page</title>
  <script type="text/javascript">
    $(function() {
      $("#filename").on('change', function(){
        readURL(this);
      });
    });
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
          console.log(e)
          $('#preImage').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
    }

    // console.log(border)
    // mark.click(function(){
    //   mark.toggleClass('black');
    // })

    function checked() {

      var mark = $("#searched-product-add-check-mark");

      mark.toggleClass('black')

    }
  </script>
</head>
<body>
  <%
    String userId = (String)session.getAttribute("userId");
    String userName = (String)session.getAttribute("userName");
  %>

  <div id="header">
    <header>
      <a href="#" title="Logo"><img src="../../../resources/img/main/logo.png" alt="logo"></a>
      <nav>
        <a href="/style">STYLE</a> <a href="/shop">SHOP</a> <a href="/about">ABOUT</a>
        <c:set var="name" value="${userName}" />
        <c:choose>
          <c:when test="${empty name}">
            <a href="/sign-in">SIGN IN</a>
          </c:when>
          <c:when test="${not empty name}">
            <a href="/mypage">MYPAGE</a>
            <a href="/logout">
              <li class="header-menu-list-item">SIGN OUT</li>
            </a>
          </c:when>
        </c:choose>
      </nav>
    </header>
  </div>

  <div class="sub-title-area">
    <p class="style-text">MYPAGE</p>
  </div>
  <div class="container">
    <div class="form-container">
      <form action="">

        <div class="images-container">

          <div class="thumb-area ic-child">
            <img src="" alt="lorem" aria-valuetext="사진선택">
          </div>

          <div class="inform-area ic-child">
            <div class="user-id-area">
              <p><%= userId %> </p>
            </div>
            <div class="post-content-area">
              <input type="text" class="post-text" placeholder="문구입력">
            </div>
            <ul class="pre-view-area">
              <li><img id="preImage" alt=""></li>
              <li><img alt=""></li>
              <li><img alt=""></li>
              <li><img alt=""></li>
            </ul>
          </div>

        </div>

        <div class="related-product-container">
          <p>관련 상품 검색</p>
          <div class="related-product-search-area">
            <div class="search-text-area">
              <input type="text" placeholder="제품검색">
              <input type="button" value="검색하기">
            </div>
            <div class="search-list-area">
              <div class="searched-item-card">
                <div class="searched-product-thumb-area">
                  <input type="file" name="filename" id="filename">
                </div>
                <div class="searched-product-inform-area">
                  <p class="searched-product-brand">Searched Product Brand</p>
                  <p class="searched-product-name">Searched Product Name</p>
                </div>
                <div class="searched-product-add-check-box-area">
                  <a class="searched-product-add-check-btn" id="searched-product-add-check-btn" onclick="return checked()">
                    <div class="searched-product-add-check-mark" id="searched-product-add-check-mark">
                      ✓
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</body>
</html>