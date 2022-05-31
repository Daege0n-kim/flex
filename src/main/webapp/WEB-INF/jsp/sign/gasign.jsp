<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../../resources/css/sign-in/sign.css">
  <title>Login</title>
</head>
<body>
  <div class="container">
    <div class="blueBg">
      <div class="box signin">
        <h2>Already Have an Account ?</h2>
        <button class="sign-in-btn">Sign in</button>
      </div>
      <div class="box signup">
        <h2>Don't Have an Account ?</h2>
        <button class="signupBtn">Sign up</button>
      </div>
    </div>
    <div class="formBx">
      <div class="form signinForm">
        <form action="">
          <h3>Sign In</h3>
          <input type="text" placeholder="Username">
          <input type="password" placeholder="Password">
          <input type="submit" value="Login">
          <a href="#" class="forgot">Forgot Password</a>
        </form>
      </div>
      <div class="form signupForm">
        <form action="">
          <h3>Sign Up</h3>
          <input type="text" placeholder="Username">
          <input type="text" placeholder="Email Address">
          <input type="password" placeholder="Password">
          <input type="password" placeholder="Confirm Password">
          <input type="submit" value="Register">
        </form>
      </div>
    </div>
  </div>

  <script>
    const sign_in_btn = document.querySelector('.sign-in-btn');
    const signupBtn = document.querySelector('.signupBtn');
    const formBx = document.querySelector('.formBx');
    const body = document.querySelector('body');

    signupBtn.onclick = function() {
      formBx.classList.add('active')
      body.classList.add('active')
    }

    sign_in_btn.onclick = function() {
      formBx.classList.remove('active')
      body.classList.remove('active')
    }
  </script>
</body>
</html>