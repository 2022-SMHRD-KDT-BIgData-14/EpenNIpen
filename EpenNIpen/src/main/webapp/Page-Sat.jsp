<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
    ul{
        text-align: center;
        list-style: none;
        margin: 30%;
    }
    li{
        display: inline-block;
        margin-left: 20px;
    }
   *{
    font-family: 'Nanum Gothic', sans-serif;
   }
    
</style>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>이펜니펜 | 사용 후기</title>

    <!-- 페이지 만족도 조사 -->
    <!-- 가운데 사진 배너만 바꾸면 됨 -->
    

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

    <!-- Hero Section Begin -->
    
    <!-- Hero Section End -->

    <!-- 중간 배너 Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>만족도조사</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.jsp">이펜니펜</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->



    <!-- 게시글 Contact Form Begin -->
    <div class="Page-Sat-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="Page-Sat__form__title">

                        
                                <a href="#" class="site-btn">사이트 사용 후기</a>  
                                
                           
                    </div>
                    <div>
                   
                </div>
                </div>
            </div>

            <form action="InsertSurvey">
                <div class="row">
                    
                    <div class="col-lg-12 text-center">
                        <textarea placeholder="사이트 이용 후 느낀 점을 작성해주세요" name="modify_1"></textarea>
                        <div>
                            <p>
                                * 사용 후기는 익명으로 진행되며, 본 사이트의 발전에 도움이 됩니다.
                                <br>
                                <br>
                            </p>
                        </div>
                        <input type="hidden" name="id" value="<%= info.getId()%>">
                        <button type="submit" class="site-btn">완료</button>
                    </div>

                    
                </div>
            </form>
        </div>
    </div>
    <!-- Contact Form End -->

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