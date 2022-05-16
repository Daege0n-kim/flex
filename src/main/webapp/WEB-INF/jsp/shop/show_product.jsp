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

  <h1>Show Product</h1>

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

</body>
</html>