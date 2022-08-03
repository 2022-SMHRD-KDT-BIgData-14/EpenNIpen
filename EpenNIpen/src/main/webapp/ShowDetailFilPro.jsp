<%@page import="model.FilterDAO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="model.TableDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.SearchDAO"%>
<%@page import="model.SearchDTO"%>
<%@page import="model.TableDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
	<script src="js/jquery-3.3.1.min.js"></script>
<style>
filtertable {
	width: 100%;
	border-top: 1px solid #bfbfbf;
	border : 1px solid #000
	border-collapse: collapse;
}

imgSize{
background-size: 300px 150px;
}


</style>
</head>

<body>

				
<%-- <%
				// 사용자가 클릭한 제품을 식별할 수 있는 제품명 통신
				int prod_seq = Integer.parseInt(request.getParameter("prod_seq"));
				TableDTO detail_fil_num = new FilterDAO().showFilDetail(prod_seq);
%> 
	 --%>


	<!-- ---------------상품 조회------------- -->

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
		<div class="header__top__right__auth">
			<a href="#"><i class="fa fa-user"></i>로그인</a>
		</div>
		<div class="humberger__menu__cart">
			<a href="#"><i class="fa fa-heart"></i> </a>
		</div>
		<div class="humberger__menu__widget"></div>
		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li class="active"><a href="./MainPage.html">이펜니펜은?</a></li>
				<li><a href="#">제품설명</a>
					<ul class="header__menu__dropdown">
						<li><a href="./shop-details.html">연필</a></li>
						<li><a href="./shoping-cart.html">샤프</a></li>
						<li><a href="./checkout.html">볼펜</a></li>
						<li><a href="./blog-details.html">형광펜</a></li>
						<li><a href="페이지 만들어야함">만년필</a></li>
					</ul></li>
				<li><a href="./Product-inq.html">상품조회</a></li>
				<li><a href="./Event-Page.html">이벤트페이지</a></li>
				<li><a href="./Page-Sat.html">페이지만족도 조사</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
	</div>
	<!-- Humberger End -->

	<!--최상단 검색 페이지 클릭
        Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="header__top__right">
							<div class="header__top__right__auth">
								<a href="#"><i class="fa fa-user"></i> 로그인</a>
							</div>
							<div class="header__top__right__auth">
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="./MainPage.html"><img src="img/logo.jpg" alt=""></a>
					</div>
				</div>
				<div class="col-lg-6">
					<nav class="header__menu">
						<ul>
							<li class="active"><a href="./MainPage.html">이펜니펜?</a></li>
							<li><a href="./Product-Des.html">제품설명</a></li>
							<li><a href="./Product-inq.html">상품조회</a></li>
							<li><a href="./Event-Page.html">이벤트페이지</a></li>
							<li><a href="./Page-Sat.html">페이지만족도조사</a></li>
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


	<!-- 제품 조회, 검색
        Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>제품조회</span>
						</div>
						<ul>
							<li><a href="#">연필</a></li>
							<li><a href="#">샤프</a></li>
							<li><a href="#">볼펜</a></li>
							<li><a href="#">형광펜</a></li>
							<li><a href="#">만년필</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<div class="hero__search__categories">
									제품조회 <span class="arrow_carrot-down"></span>
								</div>
								<input type="text" placeholder="원하는 니펜은?">
								<button type="submit" class="site-btn">검색</button>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- 중간 배너 그림 멘트
        Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>상품 조회</h2>
						<div class="breadcrumb__option">
							<a href="./MainPage.html">이펜니펜</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- 상품 조회 카테고리
        Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">	

						<!-- 최근 본 상품 -->
<%
				// 사용자가 클릭한 제품을 식별할 수 있는 제품명 통신
				int prod_seq = Integer.parseInt(request.getParameter("prod_seq"));
				TableDTO detail_fil_num = new FilterDAO().showFilDetail(prod_seq);
%> 
	

						<div class="sidebar__item">
						<!-- 볼펜 최저가 -->
						<% if(detail_fil_num.getProd_seq() == 273 ){ %>
		
							<div class="latest-product__text">
								<h4>제품 최저가</h4>
								<div class="latest-product__slider owl-carousel">
									<div class="latest-prdouct__slider__item">
										<a href="https://www.coupang.com/vp/products/5862511582?itemId=10233795516&vendorItemId=81554436685&src=1032001&spec=10305201&addtag=400&ctag=5862511582&lptag=P5862511582&itime=20220803101038&pageType=PRODUCT&pageValue=5862511582&wPcid=16594890383087243690697&wRef=cr.shopping.naver.com&wTime=20220803101038&redirect=landing&isAddedCart=" class="latest-product__item">
											<div class="latest-product__item__pic">
											
												<img src="https://blog.kakaocdn.net/dn/6ui8u/btqDtzRrCzg/ZM8q87L5frjEl0za6UnIk1/img.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
											<!-- <h6>5,040원</h6> -->
											</div>
										</a>
										<h4>5,040원</h4>
									</div>
									<div class="latest-prdouct__slider__item">
										<a href="https://www.hmall.com/p/pda/itemPtc.do?ReferCode=429&slitmCd=2068711191&utm_source=naver&utm_medium=cps_pcs&utm_campaign=sale&NaPm=ct%3Dl6cwzr5c%7Cci%3D11acf5403c1738040ad90a75531eb3dd42bd227a%7Ctr%3Dslct%7Csn%3D14%7Chk%3Db7561b43325f7421aa1f9472d973755a8ab82e35" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="https://blog.kakaocdn.net/dn/bATAYv/btqBD2OfDwv/jI6jmfOkbiaQB1VUMArMZk/img.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<!-- <h6>6,630원</h6> -->
											</div>
										</a>
										<h4>6,630원</h4>
										
									</div>
								</div>
							</div>
							<!-- 만년필 최저가 -->
							<%}else if(detail_fil_num.getProd_seq() == 236 ){ %>
		
							<div class="latest-product__text">
								<h4>제품 최저가</h4>
								<div class="latest-product__slider owl-carousel">
									<div class="latest-prdouct__slider__item">
										<a href="http://item.gmarket.co.kr/DetailView/Item.asp?goodscode=2431378993&GoodsSale=Y&jaehuid=200001169&NaPm=ct%3Dl6da44js%7Cci%3De9a4f81a9cbc2566708586b54db250419c8ab361%7Ctr%3Dslsl%7Csn%3D24%7Chk%3D9d41b0e3f56f96f1d56d8f41fca17344e8ac72b8" class="latest-product__item">
											<div class="latest-product__item__pic">
											
												<img src="https://blog.kakaocdn.net/dn/cHPIUX/btqCzB5fRlU/SbZTqWXHI3HvBeuMWbJkGK/img.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
											<!-- <h6>5,040원</h6> -->
											</div>
										</a>
										<h4>11,180원</h4>
									</div>
									<div class="latest-prdouct__slider__item">
										<a href="https://www.lotteon.com/p/product/LO1789079236?sitmNo=LO1789079236_1789079237&ch_no=100065&ch_dtl_no=1000030&entryPoint=pcs&dp_infw_cd=CHT&NaPm=ct%3Dl6da9zyw%7Cci%3D0779b7570217080d153b260c6a0a00c2fe695fca%7Ctr%3Dslsl%7Csn%3D1243359%7Chk%3D6419a3ebd10c08fba2d82a1234bbb06b41b3ab24" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="https://blog.kakaocdn.net/dn/VJTCY/btqwPAhVtz4/W4dOFbW8A0X7JioNO9XfKk/img.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<!-- <h6>6,630원</h6> -->
											</div>
										</a>
										<h4>18,220원</h4>
										
									</div>
								</div>
							</div>
							
							<%}else{ %>
							<script>
							$("#sidebar__item").remove();
							</script>
							
							<%} %>
						</div>
					</div>
				</div>





				<!-- 상세정보 공간 -->

				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>상세 정보</h2>
						</div>
						<div class="row">
							<div class="select-filter"> 
							
				
<%-- <%
				// 사용자가 클릭한 제품을 식별할 수 있는 제품명 통신
				int prod_seq = Integer.parseInt(request.getParameter("prod_seq"));
				TableDTO detail_fil_num = new FilterDAO().showFilDetail(prod_seq);
%> 
	 --%>		
			<img src= "<%= detail_fil_num.getDescription_1() %>"> 
				
							</div>
						</div>
						</div>
						
						
						
						
						

<!-- ----------------------- 필터된 상품 보여주기  -------------------------- -->	
					
							<div id= "showlist" class="row">								
										<!-- <div class="product__item__text">
											<h6>
												<a href="#"></a>
											</h6>
										</div>		 -->					
							</div>
							
							

							
<!-- 							<div class="product__pagination">
								<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> 
								<a href="#"><i class="fa fa-long-arrow-right"></i></a>
							</div> -->
							
							
						</div>
					</div>
				</div>
	</section>
	
	<!-- Product Section End -->

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

	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>



</body>

</html>