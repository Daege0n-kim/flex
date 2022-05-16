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
      <select name="brandIndex">
        <c:forEach var="brand" items="${brands}" varStatus="status">
          <option value="${brand.brandIndex}"><c:out value="${brand.brandName}" /></option>
        </c:forEach>
      </select>
    </div>
    <div class="pr_name">
      <input type="text" name="productName">
    </div>
    <div class="price">
      <input type="number" name="productPrice">₩
    </div>
    <div class="category">
      <select name="categoryIndex">
        <c:forEach var="category" items="${categories}" varStatus="status">
          <option value="${category.categoryIndex}"><c:out value="${category.categoryName}" /></option>
        </c:forEach>
      </select>
    </div>
    <div class="sex">
      <select name="sexIndex">
        <c:forEach var="sex" items="${sex}" varStatus="status">
          <option value="${sex.sexIndex}"><c:out value="${sex.sex}" /></option>
        </c:forEach>
      </select>
    </div>
    <input type="submit" value="Submut">
  </form>

</body>
</html>