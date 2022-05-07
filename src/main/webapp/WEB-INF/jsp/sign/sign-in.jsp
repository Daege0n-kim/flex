<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
</head>
<body>
  
  <div class="title-section">
    <form action="/login" method="post">
      <input type="text" name="login_id" placeholder="login_id">
      <input type="password" name="login_password" placeholder="login_password">
      <button type="submit">Click</button>
    </form>
  </div>
</body>
</html>