<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Style Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../../resources/css/style/style.css">
    <link rel="stylesheet" href="../../../resources/css/main/reset.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <div id="header">
        <header>
            <a href="#" title="Logo"><img src="../../../resources/img/style/logo.png"></a>
            <nav>
                <a href="">STYLE</a> <a href="">SHOP</a> <a href="">ABOUT</a> <a href="">SIGN IN</a>
            </nav>
        </header>
    </div>

    <h1 class="style-text">STYLE</h1>

    <div class="tab">
        <div class="tab-wrap">
            <ul>
                <li data-id="con1">인기</li>
                <li data-id="con2" class="on">메인</li>
                <li data-id="con3">팔로잉</li>
            </ul>
        </div>

        <!-- style-popular -->
        <div id="con1" class="conBox">
            <div class="cont-wrap">
                <div class="style-content">
                    <div class="st-img"></div>
                    <div class="popularcard">
                        <p>@kimchi<br><span>봄인줄 알았지만 겨울이었다.<br></span>(하트) 12 (댓글) 2</p>
                        <div class="sm-img-wrap">
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                        </div>
                    </div>
                </div>
                <div class="style-content">
                    <div class="st-img"></div>
                    <div class="popularcard">
                        <p>@kimchi<br><span>봄인줄 알았지만 겨울이었다.<br></span>(하트) 12 (댓글) 2</p>
                        <div class="sm-img-wrap">
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                        </div>
                    </div>
                </div>
                <div class="style-content" style="margin-bottom:64px;">
                    <div class="st-img"></div>
                    <div class="popularcard">
                        <p>@kimchi<br><span>봄인줄 알았지만 겨울이었다.<br></span>(하트) 12 (댓글) 2</p>
                        <div class="sm-img-wrap">
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                            <div class="card-sm-img"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- style-main -->
        <div id="con2" class="conBox on">
            <h4 class="tit">최근 뜨고있는 스니커즈!!</h4>
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h4 class="tit">나만 조던 없어!!?</h4>
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h4 class="tit">봄에는 스톤~~</h4>
            <div class="container" style="margin-bottom:146px;">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img src="../../../resources/img/style/img-sample2.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text"><span class="card-text-tit">@kimchi<br></span>봄인줄 알았지만
                                    겨울이었다.<br><span class="card-text-tit">(하트) 12 (댓글) 2</span></p>
                                <div class="sm-img-wrap">
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                    <div class="card-sm-img"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- style-following -->
        <div id="con3" class="conBox">
            <div class="cont-wrap" style="margin-top:109px">
                <div class="lineimg">
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                </div>
                <div class="lineimg">
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                </div>
                <div class="lineimg">
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                </div>
                <div class="lineimg">
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                </div>
                <div class="lineimg">
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                </div>
                <div class="lineimg">
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                    <div class="flimg"></div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="footer-cont">
            <img src="../../../resources/img/style/logo.png" alt="footer-logo" style="padding-bottom:50px">
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
    <script>
        $(function () {
            // tab 메뉴를 클릭하였을 때 동작함
            $(".tab ul li").click(function () {

                // 현재 선택되어있던 메뉴들을 초기화함
                $(".tab ul li").removeClass('on');
                $(".tab .conBox").removeClass('on');

                // 선택된 메뉴에 on 클래스를 주어 표기함
                $(this).addClass('on');

                // 선택된 탭의 data 값으로 content box를 선택함
                $("#" + $(this).data('id')).addClass('on');
            });
        });

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