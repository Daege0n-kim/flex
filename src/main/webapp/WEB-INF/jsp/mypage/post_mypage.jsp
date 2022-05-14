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
    <form action="/post_mypage" method="post" enctype="multipart/form-data">
      <input type="file" name="myImage" />
      <input type="submit" value="Post">
    </form>
  </div>
</body>
</html>