<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign UP Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../../../resources/css/sign-up/style.css">
  <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
  <div id="header">
    <header>
      <a href="/home" title="Logo"><img src="../../../resources/img/main/logo.png"></a>
      <nav>
        <a href="">STYLE</a> <a href="">SHOP</a> <a href="">ABOUT</a> <a href="">SIGN IN</a>
      </nav>
    </header>
  </div>

  <p class="signin-text">Sign IN</p>

  <div class="side-txt">
      <div class="txt">
          FLEX FOR LIMITED EDITION TRANSACTION
      </div>
  </div>

  <div class="wrapper">
    <form>
      <img src="../../../resources/img/main/logo.png" class="signlogo">
      <div class="smform">
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">이메일 주소</label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
            placeholder="예) kimchi@naver.com" style="height:30px;border:none;border-bottom:1px solid #afafaf;padding:0;border-radius:0">
        </div>
        <div class="mb-3" style="margin-top:3.5vw">
          <label for="exampleInputPassword1" class="form-label">비밀번호</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="영문,숫자,특수문자 조합 8-16자"
            style="height:30px;border:none;border-bottom:1px solid #afafaf;padding:0;border-radius:0">
        </div>
      </div>
      <label style="margin-top:2vw;display:flex;align-items:center"><input type="checkbox" name="age" value="checkage" style="width:1.5vw;height:1.5vw;margin:0 1vw">[필수] 14세 이상이며 모두 동의합니다.</label>
      <label style="margin-top:2vw;display:flex;align-items:center"><input type="checkbox" name="ad" value="checkad" style="width:1.5vw;height:1.5vw;margin:0 1vw">[선택] 광고성 정보수신에 모두 동의합니다.</label>
      <button>가입하기</button>
    </form>
  </div>
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
<script>
  var header = $('header');

  $(window).scroll(function (e) {
      if (header.offset().top !== 0) {
          if (!header.hasClass('shadow')) {
              header.addClass('shadow');
          }
      } else {
          header.removeClass('shadow');
      }
  });
</script>
</body>

</html>