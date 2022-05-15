<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Product</title>
</head>
<body>

  <form action="/edit_product" method="post" enctype="multipart/form-data">
    <div class="thumb">
      <span>Thumb : </span><input type="file" name="thumb" value="Thumb">
    </div>
    <div class="detail">
      <span>Detail : </span><input type="file" name="detail" value="Detail">
    </div>
    <div class="brand">
      <select name="brandName">
        
      </select>
    </div>
    <div class="pr_name">
      <input type="text" name="productName">
    </div>
    <div class="price">
      <input type="number" name="productPrice">₩
    </div>
    <div class="category">
      <input type="text" name="categoryName">
    </div>
    <div class="sex">
      <input type="text" name="sex">
    </div>
    <input type="submit" value="Submut">
  </form>

</body>
</html>