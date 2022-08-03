<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
    *{
        font-family: 'Nanum Gothic', sans-serif;
    }
    .humberger__menu__nav.mobile-menu{
        font-size: smaller;
    }
    li{
        margin-left: 5%;
    }
    .login_bar{
    background-color: #7fad39;
    padding: 10px 0 13px
}
</style>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>이펜니펜 | 메인페이지</title>

    <!-- Google Font -->
    <!-- <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet"> -->
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

</head>

<body>
<% MemberDTO info = (MemberDTO)session.getAttribute("info");%>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   <!-- 반응형 리스트Humberger Begin -->
   <div class="humberger__menu__overlay"></div>
   <div class="humberger__menu__wrapper">
       <div class="humberger__menu__logo">
           <a href="#"><img src="img/logo.jpg" alt=""></a>
       </div>

		<%
		if(info == null) {
		%>
		<div class="header__top__right__auth">
			<a href="join.jsp">Join</a>
		</div>
		<div class="header__top__right__auth">
			<a href="login.jsp">Login</a>
		</div>
		<%
		} else if (info.getId().equals("admin")) {
		%>
		<div class="header__top__right__auth">
			<a><%=info.getName()%>님, 환영합니다.</a>
		</div>
		<div class="header__top__right__auth">
			<a href="Logout">Logout</a>
		</div>
		<div class="header__top__right__auth">
			<a href="ShowMember.jsp">회원관리</a>
		</div>
		<%
		} else {
		%>
		<div class="header__top__right__auth">
			<a><%=info.getName()%>님, 환영합니다.</a>
		</div>
		<div class="header__top__right__auth">
			<a href="Logout">Logout</a>
		</div>
		<div class="header__top__right__auth">
			<a href="Mypage.jsp">Mypage</a>
		</div>
		<%
		}
		%>
		<div class="humberger__menu__widget">


       </div>
       <nav class="humberger__menu__nav mobile-menu">
           <ul>
               <li class="active"><a href="./MainPage.jsp">Home</a></li>
               <li><a href="#">About</a>
                   <ul class="header__menu__dropdown">
                       <li><a href="./Product-Des.jsp">개요</a></li>
                       <li><a href="./Product-Des copy.jsp">구매Tip</a></li>
                   </ul>
               </li>
               <li><a href="./Product-inq.jsp">Products</a></li>
               <li><a href="./Event-Page.jsp">Contents</a></li>
               <li><a href="./Page-Sat.jsp">Recommend</a></li>
           </ul>
       </nav>
       <div id="mobile-menu-wrap"></div>
   </div>
   <!-- Humberger End -->

    <!--최상단 Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__right">
                        <%if(info==null){ %>
                            <div class="header__top__right__auth">
                                <a href="join.jsp">Join</a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="login.jsp">Login</a>
                            </div>
                            <% }else if(info.getId().equals("admin")){%>
                            <div class="header__top__right__auth">
								<a><%=info.getName()%>님, 환영합니다.</a>
							</div>
                            <div class="header__top__right__auth">
                                <a href="Logout">Logout</a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="ShowMember.jsp">회원관리</a>
                            </div>
                            <%}else{ %>
                            <div class="header__top__right__auth">
								<a><%=info.getName()%>님, 환영합니다.</a>
							</div>
                            <div class="header__top__right__auth">
                                <a href="Logout">Logout</a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="Mypage.jsp">Mypage</a>
                            </div>
                            <%} %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./MainPage.jsp"><img src="img/logo.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6" >
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./MainPage.jsp">Home</a></li>
                            <li><a href="./Product-Des.jsp">About</a></li>
                            <li><a href="./Product-inq.jsp">Products</a></li>
                            <li><a href="./Event-Page.jsp">Contents</a></li>
                            <li><a href="./Page-Sat.jsp">Recommend</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- 메인 중간 배너 Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero__search">
                        <div class="hero__search__form">
                        <!-- 수아 여기 수정 -->
                            <form action="Search">
                            														<!-- 수아 여기 수정 -->
                                <input type="text" placeholder="당신이 원하는 펜은 무엇인가요?" name="search">
                                <button type="submit" class="site-btn">검색</button>
                            </form>
                        </div>
                    </div>
                </div>                
            </div>   
        </div>
    </section>
    <!-- Hero Section End -->
    
    <!-- 초록바 -->
<!--     <div class="container">
        <div class="row">
            <div class="col-lg-12">
 -->				<div class="login_bar"></div>
				<br><br><br>
			<!-- </div>
		</div>
    </div> -->

	    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-12">
                        <div class="categories__item set-bg" data-setbg="img/categories/pro-1.jpg">
                            <!-- <h5><a href="#">1</a></h5> -->
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="categories__item set-bg" data-setbg="img/categories/pro-2.jpg">
                           <!--  <h5><a href="#">2</a></h5> -->
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="categories__item set-bg" data-setbg="img/categories/pro-3.jpg">
                            <!-- <h5><a href="#">3</a></h5> -->
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="categories__item set-bg" data-setbg="img/categories/pro-4.jpg">
                           <!--  <h5><a href="#">4</a></h5> -->
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="categories__item set-bg" data-setbg="img/categories/pro-5.jpg">
                           <!--  <h5><a href="#">5</a></h5> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>MD's 추천</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">ALL</li>
                            <li data-filter=".oranges">인기 필기구</li>
                            <li data-filter=".fresh-meat">브랜드별</li>
                            <li data-filter=".vegetables">취업준비생</li>
                            <li data-filter=".fastfood">사무용품</li>
                        </ul>
                    </div>
                </div>
            </div>
           
            
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                                                <div class="featured__item__pic set-bg">
                        	<img src="https://pendepot.co.kr/web/product/medium/202203/9465ad21cf01dd05db91b078bf1bb3c4.jpg">
                            <ul class="featured__item__pic__hover">
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="https://pendepot.co.kr//web/upload/pic2/uni_jetstream_sxe3-507-LTD_p.jpg">유니 제트스트림 3색 507 볼펜 한정판 [SXE3-507-05]</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg">
                        	<img src="https://pendepot.co.kr/web/product/medium/201707/3057_shop1_343850.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="https://pendepot.co.kr//web/upload/pic2/zebra_mildliner_highlighter_wkt7_NEW_p.jpg">제브라 마일드라이너 트윈형광펜 35가지 컬러 [WKT-7]</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg">
                        	<img src="https://pendepot.co.kr/web/product/medium/202202/fa1adb0ace302c736760ab927e7de2c9.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="https://pendepot.co.kr//web/upload/pic2/pentel_smash_q1003-1005.jpg">펜텔 스매쉬 샤프 0.3/0.5mm</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg">
                        	<img src="https://pendepot.co.kr/web/product/medium/202207/c2272faf7c1e0266e3a7f770a1e8c565.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="https://pendepot.co.kr//web/upload/pic2/staedtler_925-35_Ltd_black_p.jpg">스테들러 샤프 925 35 블랙 0.5mm</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg">
                        	<img src="https://pendepot.co.kr/web/product/medium/201902/2bcd98f8e448670b72429ea70825f58c.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="https://pendepot.co.kr//web/upload/pic/zebra_delguard_05_p.png">제브라 델가드(심이 부러지지 않는 샤프) 0.5</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg">
                        	<img src="https://pendepot.co.kr/web/product/medium/202205/0b025af869be10b3b245f8baa26d6acb.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="https://pendepot.co.kr//web/upload/pic2/pentel_graph_1000_p.jpg">펜텔그래프1000 샤프 for PRO  0.3/0.4/0.5/0.7/0.9mm  graph1000 [PG1003,1004,1005,1007,1009]</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg">
                        	<img src="https://pendepot.co.kr/web/product/medium/202203/ba949f25880053a839022f82fd92b7fe.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="https://pendepot.co.kr//web/upload/pic2/uni_uniball-one_LTD5_city-pop_p.jpg">유니 유니볼 원 한정판 씨티팝 컬러 3색 세트</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg">
                        	<img src="https://pendepot.co.kr/web/product/medium/202205/f472cd23e71e0069572ee4071c8b467c.jpg">
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="https://pendepot.co.kr//web/upload/pic/uni_kurutoga_advance.jpg">미쯔비시 유니 쿠루토가 어드밴스 [M5-559]</a></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- 필기구 블로그 이동 -->
    <section class="from-Product-Des spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-Product-Des__title">
                        <h3>연관 사이트</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="Product-Des__item">
                        <div class="Product-Des__item__pic">
                            <a href="https://cafe.naver.com/yookgunun/">
                                <img src="img/blog/MPP.png" alt="">
                            </a>
                        </div>
                        <div class="Product-Des__item__text">
                            <h5><a href="https://cafe.naver.com/yookgunun/">M.P.P <종합 필기구카페></a></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="Product-Des__item">
                        <div class="Product-Des__item__pic">
                            <a href="https://cafe.naver.com/fountainpenfriends">
                                <img src="img/blog/문방삼우.png" alt="">
                            </a>
                        </div>
                        <div class="Product-Des__item__text">
                            <h5><a href="https://cafe.naver.com/fountainpenfriends">문방삼우</a></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="Product-Des__item">
                        <div class="Product-Des__item__pic">
                            <a href="https://cafe.naver.com/decodiary">
                                <img src="img/blog/다꾸.png" alt="">
                            </a>
                        </div>
                        <div class="Product-Des__item__text">
                            <h5><a href="https://cafe.naver.com/decodiary">다이어리 꾸미기</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product-Des Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__about">
                        <ul>
                            <li>Address: 광주 동구 예술길 31-15 4층</li>
                            <li>Phone: 062-655-3506</li>
                            <li>Email: smhrd@smhrd.or.kr</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>