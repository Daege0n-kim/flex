<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../../resources/css/mypage/post.css">
  <title>Document</title>
</head>
<body>
  <div class="sub-title-area">
    <p class="style-text">MYPAGE</p>
  </div>
  <div class="container">
    <div class="user-inform-container">
      <div class="left-menu-area">
        <div class="left-shop-inform-area">
          <strong class="left-menu-ul-title">쇼핑정보</strong>
          <ul class="left-menu-ul">
            <li class="left-menu-li">구매내역</li>
            <li class="left-menu-li">장바구니</li>
            <li class="left-menu-li">좋아요</li>
          </ul>
        </div>
        <div class="left-user-inform-area">
          <strong class="left-menu-ul-title">회원정보</strong>
          <ul class="left-menu-ul">
            <li class="left-menu-li">배송지관리</li>
            <li class="left-menu-li">장바구니관리</li>
          </ul>
        </div>
      </div>
      <div class="user-infom-area">
        <div class="user-inform-card">
          <div class="user-profile-img-box">
            <img src="${path}" class="user-profile-img" id="user-profile-img" width="100px">
          </div>
          <div class="user-profile-infrom-box">
            <div class="user-profile-infrom-upper-box">
              <h1 class="user-profile-inform-user-name">${userDetail.userName}</h1>
              <p class="user-profile-inform-user-id">${userDetail.userId}</p>
            </div>
            <div class="user-profile-infrom-lower-box">
              <h3>총 구매금액</h3>
              <p class="total-price">${userDetail.totalPrice}₩</p>
              <div class="user-profile-edit-box">
                <div class="profile-edit-btn">프로필 수정하기</div>
                <div class="edit-posting-btn">글쓰기</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>