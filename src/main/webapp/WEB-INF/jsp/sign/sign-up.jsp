<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <title>Sign Up</title>
</head>

<style>
  .success {
    background-color: #f8f8f8;
  }
  .fail {
    border: 1px solid #ff0000;
  }
</style>
<body>
  <div class="title-section">
    <form action="/signup" method="post" id="form">
      LOGIN ID : <input type="text" name="loginId" id="loginId"> <input type="button" id="checkBtn" value="Click"><br>
      <!-- <input type="hidden" name="id" id="hiddenId"> -->
      LOGIN PW : <input type="password" name="loginPassword" id="password"> <br>
      USE ID : <input type="text" name="userId" id="name"> <br>
      NAME : <input type="text" name="userName" id="name"> <br>
      <!-- <button type="button" id="submitBtn">Click</button> -->
      <button type="submit">Click</button>
    </form>
  </div>

  <script>
    // var flag = false;
    // var checkBtn = document.getElementById("checkBtn");
    // var submitBtn = document.getElementById("submitBtn");

    // submitBtn.addEventListener("click", () => {
    //   var form = document.getElementById("form");
    //   var id = document.getElementById("userId").className;
    //   var password = document.getElementById("password").value;
    //   var name = document.getElementById("name").value;

      // if(id == 'fail' || id == '' || id == null) {
      //   alert("아이디 중복확인 요망");
      //   return
      // }

    //   if(password == '') {
    //     alert("패스워드 입력 요망");
    //     return
    //   }

    //   if(name == '') {
    //     alert("이름 입력 요망");
    //     return
    //   }

    //   form.submit();
    // });
    
    // checkBtn.addEventListener("click", () => {
    //   var id = document.getElementById("userId");

    //   if(id.value == '' || id.value == null) {
    //     alert("Id를 입력해주세요.");
    //   } else {
    //     checkAjax(id)
    //   }

    // })


    // function checkAjax(id) {
    //   var hiddenId = document.getElementById("hiddenId");
    //   $.ajax({
    //       url: "/check_id",
    //       type: "get",
    //       data: {
    //         "id": id.value
    //       },
    //       success: data => {
    //         if(data == 0 ) {
    //           alert("입력하신 아이디 " + id.vale + "는 사용 가능한 아이디입니다.");
    //           checkBtn.disabled = true;
    //           id.disabled = true;
    //           id.classList.remove('fail');
    //           id.classList.add('success');
    //           hiddenId.value = id.value;
    //         } else {
    //           alert("입력하신 아이디 " + id.value + "는 이미 존재하는 아이디입니다. \n다른 아이디를 입력해주세요.");
    //           id.classList.add('fail');
    //         }
    //       },
    //       error: error => {
    //         console.log(error)
    //       }
    //     });
    // }
  </script>
</body>
</html>
