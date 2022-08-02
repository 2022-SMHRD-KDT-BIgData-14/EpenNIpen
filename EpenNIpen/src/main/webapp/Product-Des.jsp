<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>이펜니펜 | 개요</title>

<!-- ----------------------사이트 개요 ------------------- -->
    
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <style>
        #note2{
            left: 500%;
        }
        *{
            font-family: 'Nanum Gothic', sans-serif;
        }
        li{
            margin-left: 5%;
        }
        .member{
            text-align: right;
        }
    </style>
</head>

<body>

    <!-- ----------------------사이트 개요 밑 구매Tip!
        blog -> Product-Des 로 바뀜 ------------------- -->

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
                                <a href="login.jsp">Login</a>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="#">Mypage</a>
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
                <div class="col-lg-6" >
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./MainPage.jsp">Home</a></li>
                            <li><a href="./Product-Des.jsp">About</a></li>
                            <li><a href="./Product-inq.jsp">Products</a></li>
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

    <!-- 메인 중간 배너 Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <input type="text" placeholder="당신이 원하는 펜은 무엇인가요?">
                                <button type="submit" class="site-btn">검색</button>
                            </form>
                        </div>
                    </div>
                </div>                
            </div>
        </div>
    </section>
    <!-- Hero Section End --> 

    <!-- 제품 설명 중간 배너 Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>About</h2>
                        <div class="breadcrumb__option">
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제품 설명 중간 배너 End -->

    <!-- Product-Des Section Begin -->
    <section class="Product-Des spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4> About</h4>
                            <ul>            
                                <li><a href="Product-Des.jsp">개요</a></li>
                                <li><a href="Product-Des copy.jsp">구매 Tip</a></li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="col-lg-9 col-md-7">
                    <div class="product__discount">
                        <div class="product__discount-Q">
                            <!-- <h2>이펜니펜 제작 이유</h2> -->
                            <div class="note">
                                <p>
                                    <!-- 이펜니펜은 최고의 기술력과 열정을 바탕으로 최상의 서비스와 솔루션을 제공하여 고객만족의 동반자로 함께 성장해 가는 사이트입니다.<br>
                                    안정적인 맞춤 추천 서비스 제공과 효율적인 사이트 구축을 위해 끊임없는 변화와 발전을 추구하고 있습니다.<br>
                                    지속적인 혁신 활동을 통해 급변하는 필기구 시장을 선도해 나갈 것이며, 더 나은 필기구 추천을 만들어 나가는데 최선의 노력을 다하겠습니다.
                                    고객 여러분들의 많은 관심과 성원 부탁 드립니다.
                                    <br><br><br> -->
                                    <img id="note2" src="./img/des1.jpg"/>

                                </p>
                                <br>

                                <p class="member">이펜니펜 개발자  김중걸, 최지훈, 이상익, 김다송, 김수아</p>
                            </div>
                        </div>
                        <!-- 밑에꺼 놔둬봐요 -->
                        <!-- <div class="row">
                            <div class="product__discount__slider owl-carousel">
                                <div class="col-lg-4">
                                    <div class="product__discount__item" >
                                    </div>
                                </div>
                            </div>
                        </div> -->
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
    <script src="js/note.js"></script>



</body>

</html>