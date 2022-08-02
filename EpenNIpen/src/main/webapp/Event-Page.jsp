<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<style>
* {
	font-family: 'Nanum Gothic', sans-serif;
}

li {
	margin-left: 5%;
}

.iframe {
	width: 800px;
	margin: 0 auto;
	scrolling: no;
}
</style>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>이펜니펜 | 나의 드림펜 찾기!</title>

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
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- blog-details.html  -> Event-Page   -->


   <!-- 반응형 리스트Humberger Begin -->
   <div class="humberger__menu__overlay"></div>
   <div class="humberger__menu__wrapper">
       <div class="humberger__menu__logo">
           <a href="#"><img src="img/logo.jpg" alt=""></a>
       </div>
       
       <div class="header__top__right__auth">
           <a href="join.jsp">Join</a>
       </div>
       <div class="header__top__right__auth">
           <a href="login.jsp">Login</a>
       </div>
       <div class="header__top__right__auth">
           <a href="#">Mypage</a>
       </div>
       <div class="humberger__menu__cart">
           <a href="#"><i class="fa fa-heart"></i> </a>
       </div>
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
               <li><a href="./Event-Page.jsp">Recommend</a></li>
               <li><a href="./Page-Sat.jsp">Contents</a></li>
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
							<div class="header__top__right__auth">
								<a href="join.jsp">Join</a>
							</div>
							<div class="header__top__right__auth">
								<a href="login.jsp"> Login</a>
							</div>
							<div class="header__top__right__auth">
								<a href="#"> Mypage</a>
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
						<a href="./MainPage.jsp"><img src="img/logo.jpg" alt=""></a>
					</div>
				</div>
				<div class="col-lg-6">
					<nav class="header__menu">
						<ul>
							<li class="active"><a href="./MainPage.jsp">Home</a></li>
							<li><a href="./Product-Des.jsp">About</a></li>
							<li><a href="./Product-inq.jsp">Product</a></li>
							<li><a href="./Event-Page.jsp">Recommend</a></li>
							<li><a href="./Page-Sat.jsp">Contents</a></li>
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

	<!-- Hero Section Begin -->

	<!-- Hero Section End -->

	<!-- Blog Details Hero Begin -->
	 <section class="blog-details-hero set-bg" data-setbg="https://cdn.crowdpic.net/detail-thumb/thumb_d_6B60317C7D600EA80E5FA04BB011CEEE.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2><a href="index.jsp">테스트 하러 가기 -></a></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
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