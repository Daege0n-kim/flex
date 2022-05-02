<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Main Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../../../resources/css/main/reset.css">
  <link rel="stylesheet" href="../../../resources/font/main">
  <link rel="stylesheet" href="../../../resources/css/main/style.css">
  <link rel="stylesheet" href="../../../resources/css/main/style-exam.css">
  <link rel="stylesheet" href="../../../resources/css/main/jd-slider.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css"
    integrity="sha384-v2Tw72dyUXeU3y4aM2Y0tBJQkGfplr39mxZqlTBDUZAb9BGoC40+rdFCG0m10lXk" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/fontawesome.css"
    integrity="sha384-q3jl8XQu1OpdLgGFvNRnPdj5VIlCvgsDQTQB6owSOHWlAurxul7f+JpUOVdAiJ5P" crossorigin="anonymous">
  <script src="../../../resources/js/main/jquery.js"></script>
  <script src="../../../resources/js/main/jquery.jdSlider-latest.min.js"></script>
</head>

<body>
  <div id="header">
    <header>
      <a href="#" title="Logo"><img src="../../../resources/img/main/logo.png" alt="logo"></a>
      <nav>
        <a href="">STYLE</a> <a href="">SHOP</a> <a href="">ABOUT</a> <a href="">SIGN IN</a>
      </nav>
    </header>
  </div>

  <div class="content main">
    <section class="jd-slider main-slider main-visual">
      <div class="slide-inner">
        <ul class="slide-area">
          <li>
            <a href="#"><img src="../../../resources/img/main/img-sample-lg.jpg" alt="img01">
              <dl>
                <dt class="main-tit">MAIN BANNER</dt>
              </dl>
            </a>
          </li>
          <li>
            <a href="#"><img src="../../../resources/img/main/img-sample-lg.jpg" alt="img02">
              <dl>
                <dt class="main-tit">MAIN BANNER</dt>
              </dl>
            </a>
          </li>
        </ul>
        <a class="prev" href="#">
          <i class="fas fa-angle-left fa-2x"></i>
        </a>
        <a class="next" href="#">
          <i class="fas fa-angle-right fa-2x"></i>
        </a>
      </div>
    </section>
    
    <div class="side-txt">
      <p>
        FLEX FOR LIMITED EDITION TRANSACTION
      </p>
    </div>

    <!-- Style -->
    <h4 class="tit" style="margin-top:89px">&lang; STYLE &rang;</h4>
    <div class="container stylecontainer" style="display:flex;justify-content:space-around">
      <div class="row row-cols-3">
        <div class="col">
          <div class="card" style="width: 18rem">
            <img src="../../../resources/img/main/img-sample.png">
            <div class="card-body">
              <p class="card-text" style="font-size:16px"><span class="card-text-tit" style="font-size:16px">@fakljs<br></span>불가사링 실물갑<br>#데일리룩 #dailylook #스타피쉬
                #스타피쉬조던 #Starfish</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample.png">
            <div class="card-body">
              <p class="card-text" style="font-size:16px"><span class="card-text-tit" style="font-size:16px">@fakljs<br></span>불가사링 실물갑<br>#데일리룩 #dailylook #스타피쉬
                #스타피쉬조던 #Starfish</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample.png">
            <div class="card-body">
              <p class="card-text" style="font-size:16px"><span class="card-text-tit" style="font-size:16px">@fakljs<br></span>불가사링 실물갑<br>#데일리룩 #dailylook #스타피쉬
                #스타피쉬조던 #Starfish</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="bannerimg">
      <p>
        <MARQUEE scrollamount="30" style="font-size:260px;font-weight:bold;color:#000">FLEX FOR LIMITED EDITION
          TRANSACTION</MARQUEE>
        <!-- 스크롤의 속도 -->
      </p>
    </div>

    <!-- New Arrive -->
    <h4 class="tit">&lang; NEW ARRIVE &rang;</h4>
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample2.png">
            <div class="card-body">
              <p class="card-text"><span class="card-text-tit">NIKE AIR<br></span>TREVISCAT</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample2.png">
            <div class="card-body">
              <p class="card-text"><span class="card-text-tit">NIKE AIR<br></span>TREVISCAT</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample2.png">
            <div class="card-body">
              <p class="card-text"><span class="card-text-tit">NIKE AIR<br></span>TREVISCAT</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample2.png">
            <div class="card-body">
              <p class="card-text"><span class="card-text-tit">NIKE AIR<br></span>TREVISCAT</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="bannerimg"></div>

    <!-- MD's Pick -->
    <h4 class="tit">&lang; MD's Pick &rang;</h4>
    <div class="container" style="margin-bottom:117px">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample2.png">
            <div class="card-body">
              <p class="card-text"><span class="card-text-tit">NIKE AIR<br></span>TREVISCAT</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample2.png">
            <div class="card-body">
              <p class="card-text"><span class="card-text-tit">NIKE AIR<br></span>TREVISCAT</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample2.png">
            <div class="card-body">
              <p class="card-text"><span class="card-text-tit">NIKE AIR<br></span>TREVISCAT</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 18rem;">
            <img src="../../../resources/img/main/img-sample2.png">
            <div class="card-body">
              <p class="card-text"><span class="card-text-tit">NIKE AIR<br></span>TREVISCAT</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <footer>
      <div class="footer-cont">
        <img src="../../../resources/img/main/logo.png" alt="footer-logo" style="padding-bottom:50px">
        <p>이용안내 | 검수기준 | 이용정책 | 패널티 정책 | 커뮤니티 가이드라인</p>
        <p>회사소개 인재채용 제휴제안 이용약관 개인정보처리방침</p>
        <a>크림 주식회사 . 대표김창욱사업자등록번호:570-88-01618사업자정보확인통신판매업:제 2021-성남분당C-0093호<a>
            <br>
            <a>사업장소재지:경기도 성남시 분당구 분당내곡로 117, 8층개인정보관리책임자:김미진호스팅 서비스:네이버 클라우드 (주)</a>
            <br>
            <br>
            <a>크림(주)는 통신판매 중개자로서 통신판매의 당사자가 아니므로 개별 판매자가 등록한 상품정보에 대해서 책임을 지지 않습니다.</a>
            <br>
            <a> 단, 거래과정에서 검수하고 보증하는 내용에 대한 책임은 당사에 있습니다.</a>
      </div>
    </footer>
  </div>

  <!-- Slider Script -->
  <script>
    window.onload = function () {
      $('.main-slider').jdSlider({
        wrap: '.slide-inner',
        isAuto: true,
        isLoop: true
      });
      $('.slider').jdSlider({
        wrap: '.slide-inner',
        slideShow: 4,
        slideToScroll: 1,
        isLoop: true,
        responsive: [{
          viewSize: 768,
          settings: {
            slideShow: 1
          }
        }]
      });
    };
  </script>
</body>

</html>