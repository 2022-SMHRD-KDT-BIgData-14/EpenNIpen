<%@page import="model.TableDTO"%>
<%@page import="model.FilterDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.FilterDAO"%>
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
<title>이펜니펜 | 필터링</title>

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
<style>
filtertable {
	width: 100%;
	border-top: 1px solid #bfbfbf;
	border : 1px solid #000
	border-collapse: collapse;
}


</style>
</head>

<body>

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

						<div class="sidebar__item">
							<div class="latest-product__text">
								<h4>최근 본 상품</h4>
								<div class="latest-product__slider owl-carousel">
									<div class="latest-prdouct__slider__item">
										<a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="img/latest-product/lp-1.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>1열</h6>
											</div>
										</a>
										<!-- 최근 본 상품 더 보여주고 싶으면 여기에 a태그해서 추가 -->
									</div>
									<div class="latest-prdouct__slider__item">
										<a href="#" class="latest-product__item">
											<div class="latest-product__item__pic">
												<img src="img/latest-product/lp-1.jpg" alt="">
											</div>
											<div class="latest-product__item__text">
												<h6>2열</h6>
											</div>
										</a>
										
										<!-- 최근 본 상품 2열 ↑-->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 필터 넣는 -->

				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>선택 분류</h2>
						</div>
						<div class="row">
							<div class="select-filter"> 


	<!-- ---------------------------------------------------------------------------------------------------------------------------- -->
								<div class="">
								<table class="table">
									<tbody>
										<tr>
											<th>제품분류</th>
											<td><input type="checkbox" id="pencil" name="pencil"
												value="연필" onchange="makeFilter(this);" /> <label
												for="age10">연필</label></td>
											<td><input type="checkbox" id="sharp" name="sharp"
												value="샤프" onchange="makeFilter(this);" /> <label
												for="age10">샤프</label></td>
											<td><input type="checkbox" id="pen" name="pen"
												value="볼펜" onchange="makeFilter(this);" /> <label
												for="age10">볼펜</label></td>
											<td><input type="checkbox" id="highlighter"
												name="highlighter" value="형광펜" onchange="makeFilter(this);" />
												<label for="age10">형광펜</label></td>
											<td><input type="checkbox" id="fountainPen"
												name="fountainPen" value="만년필" onchange="makeFilter(this);" />
												<label for="age10">만년필</label></td>
										</tr>
										<tr>
											<th>용도</th>
											<td><input type="checkbox" id="write" name="write"
												value="필기" onchange="makeFilter(this);" /> <label
												for="age10">필기용</label></td>
											<td><input type="checkbox" id="drawing" name="drawing"
												value="제도" onchange="makeFilter(this);" /> <label
												for="age10">제도용</label></td>
											<td><input type="checkbox" id="art" name="art"
												value="미술" onchange="makeFilter(this);" /> <label
												for="age10">미술용</label></td>
												<td></td>
												<td></td>
										</tr>
										<tr>
											<th>진하기</th>
											<td><input type="checkbox" id="2B" name="2B" value="2B"
												onchange="makeFilter(this);" /> <label for="age10">2B</label></td>
											<td><input type="checkbox" id="4B" name="4B" value="4B"
												onchange="makeFilter(this);" /> <label for="age10">4B</label></td>
											<td><input type="checkbox" id="6B" name="6B" value="6B"
												onchange="makeFilter(this);" /> <label for="age10">6B</label></td>
											<td><input type="checkbox" id="H" name="H" value="H"
												onchange="makeFilter(this);" /> <label for="age10">H</label></td>
											<td><input type="checkbox" id="HB" name="HB" value="HB"
												onchange="makeFilter(this);" /> <label for="age10">HB</label></td>
										</tr>
										<tr>
											<th>형태</th>
											<td><input type="checkbox" id="cover" name="cover"
												value="뚜껑형" onchange="makeFilter(this);" /> <label
												for="age10">뚜껑형</label></td>
											<td><input type="checkbox" id="knock " name="knock"
												value="노크형" onchange="makeFilter(this);" /> <label
												for="age10">노크형</label></td>
											<td><input type="checkbox" id="twist " name="twist"
												value="트위스트형" onchange="makeFilter(this);" /> <label
												for="age10">트위스트형</label></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>잉크종류</th>
											<td><input type="checkbox" id="oil" name="oil"
												value="유성펜" onchange="makeFilter(this);" /> <label
												for="age10">유성펜</label></td>
											<td><input type="checkbox" id="water" name="water"
												value="수성펜" onchange="makeFilter(this);" /> <label
												for="age10">수성펜</label></td>
											<td><input type="checkbox" id="gel" name="gel"
												value="중성펜" onchange="makeFilter(this);" /> <label
												for="age10">중성펜</label></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>두께별</th>
											<td><input type="checkbox" id="0.5" name="0.5"
												value="~0.5mm" onchange="makeFilter(this);" /> <label
												for="age10">~0.5mm</label></td>
											<td><input type="checkbox" id="0.7" name="0.7"
												value="~0.7mm" onchange="makeFilter(this);" /> <label
												for="age10">~0.7mm</label></td>
											<td><input type="checkbox" id="1.0" name="1.0"
												value="~1.0mm" onchange="makeFilter(this);" /> <label
												for="age10">~1.0mm</label></td>
											<td><input type="checkbox" id="1.05" name="1.05"
												value="~1.05mm" onchange="makeFilter(this);" /> <label
												for="age10">~1.05mm</label></td>
											<td></td>
									
										</tr>
										<tr>
											<th>펜촉굵기</th>
											<td><input type="checkbox" id="EF" name="EF" value="EF"
												onchange="makeFilter(this);" /> <label for="age10">EF</label></td>
											<td><input type="checkbox" id="F" name="F" value="F"
												onchange="makeFilter(this);" /> <label for="age10">F</label></td>
											<td><input type="checkbox" id="M" name="M" value="M"
												onchange="makeFilter(this);" /> <label for="age10">M</label></td>
											<td><input type="checkbox" id="B" name="B" value="B"
												onchange="makeFilter(this);" /> <label for="age10">B</label></td>
											<td></td>
										</tr>
										<tr>
											<th>잉크충전방식</th>
											<td><input type="checkbox" id="cartridge"
												name="cartridge" value="카트리지" onchange="makeFilter(this);" />
												<label for="age10">카트리지</label></td>
											<td><input type="checkbox" id="c&c" name="c&c"
												value="컨버터&카트리지" onchange="makeFilter(this);" /> <label
												for="age10">컨버터</label></td>
											<td><input type="checkbox" id="plunger" name="plunger"
												value="플런저" onchange="makeFilter(this);" /> <label
												for="age10">플런저</label></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>그립감</th>
											<td><input type="checkbox" id="rubber" name="rubber"
												value="고무" onchange="makeFilter(this);" /> <label
												for="age10">고무</label></td>
											<td><input type="checkbox" id="metal" name="metal"
												value="메탈" onchange="makeFilter(this);" /> <label
												for="age10">메탈</label></td>
											<td><input type="checkbox" id="plastic" name="plastic"
												value="플라스틱" onchange="makeFilter(this);" /> <label
												for="age10">플라스틱</label></td>
											<td><input type="checkbox" id="timber" name="timber"
												value="목재" onchange="makeFilter(this);" /> <label
												for="age10">목재</label></td>
											<td><input type="checkbox" id="aluminum" name="aluminum"
												value="알루미늄" onchange="makeFilter(this);" /> <label
												for="age10">알루미늄</label></td>
										</tr>
									</tbody>
								</table>
								입력값  <input type="text" id="showFilter" />
								<input
									type="submit" value="검색" onclick="data()" />
								</div>

								<script>
		
		// 실시간 필터링 보여주기--------------------------------------
		var ageArr = {
				pencil : null,
				sharp : null,
				pen : null,
				highlighter : null,
				write : null,
				drawing : null,
				art : null,
				B2 : null,
				B4 : null,
				B6 : null,
				H : null,
				HB : null,
				cover : null,
				knock : null,
				twist : null,
				oil : null,
				water : null,
				gel : null,
				mm05 : null,
				mm07 : null,
				mm10 : null,
				mm105 : null,
				EF : null,
				F : null,
				M : null,
				B : null,
				cartridge : null,
				cc : null,
				plunger : null,
				rubber : null,
				metal : null,
				plastic : null,
				timber : null,
				aluminum : null
		}; //필터 내용을 저장하는 배열
		
		ArrayList<SearchDTO> search_list = (ArrayList)request.getAttribute("search_list");
		String search = request.getAttribute("search");
		// 검색필터
		var sArr = {
				search : null;
		}
		
		var showFilterValue = document.getElementById("showFilter");//필터입력값 보여주기 위한 text

		var Json = null;
		
		//필터 내용을 저장하는 function
		function makeFilter(target) {

			var ageVal = target.value; //check value
			var confirmCheck = target.checked; //check여부 확인
			var name = target.name;
			console.log("필터 선택값 : ", ageVal);
			console.log("필터 이름 : ", name);
			// console.log("선택여부 : " + confirmCheck);

			// check true
			if (confirmCheck == true) {
				// console.log("check");
				ageArr[name] = ageVal;
				console.log(ageArr);
				Json = JSON.stringify(ageArr);
				showFilterValue.value += ( "▾" + ageVal +"  ");
				//$("#showFilter").last().append(ageVal); // check value filter 배열에 입력

				// check false
			} else {
				console.log(ageArr)
			/* 	ageArr.splice(ageArr.indexOf(ageVal), 1); // check value filter 배열내용 삭제             */
			
				$('#showFilter').val("")
			}

			//showFilterValue.value = ageVal; // textBox에 필터 배열 추가
			console.log("필터입력값 출력 : ", ageArr);

		}
		
		
		// 필터된 추천 결과 보여주기-----------------------------------
		
		function data(){	
			console.log("aggAr", ageArr)
			$.ajax({
				url: 'Filter',
				data : {
					ageArr : Json
				},
				dataType: 'json',
				success: function(res){
					if(res==null){
						alert("결과는 null!")
					}else{
						alert("결과는 OK!")
						makeFormat(res)
					}
				},
				error: function(e){
					alert('실패')
					console.log(e)
				}
				
			})
			
		} 
		
 		var total = 0;
 		var bottomSize = 0;
		
		function makeFormat(res){
			
			for(var i=0; i<res.length; i++){	
				console.log('순서 :'+i)
				console.log('결과 : '+res[i])
				
				
				
				
				
				$("#showlist").append("<div class='col-lg-3 col-md-6 col-sm-6'></div>");
				$("#showlist .col-lg-3").last().append("<div class='product__item' ></div>");
				$("#showlist .col-lg-3 .product__item").last().append("<div class='product__item__pic set-bg showimg"+i+"'></div>");
				$("#showlist .col-lg-3 .product__item .showimg"+i).css('background-image', "url("+res[i].img+")");
				$("#showlist .col-lg-3 .product__item").last().append("<div class='product__item__text'></div>");
				$("#showlist .col-lg-3 .product__item .product__item__text").last().append("<h6></h6>");
				$("#showlist .col-lg-3 .product__item .product__item__text h6").last().append("<a href=" + res[i].description_1 + ">" + res[i].product +"</a>");
				//$("#showlist .col-lg-3 .product__item .product__item__text h6").last().append("<a href= https://pendepot.co.kr//web/upload/pic/staedtler_mars_780c_p.jpg>" + res[i].product +"</a>");

				
				$('#showFilter').val("")
				
				
			}
	
			
		}	


	</script>


<!-- ----------------------------------------------------------------------------------------------------------- -->


<!-- ----------------------------추천하기---------------------------- -->

									</div>

									<!-- <div class="product__discount__slider owl-carousel">
                                <div id="product-filter" class="col-lg-4">
                                    <div class="product__discount__item__pic set-bg"
                                            data-setbg="img/logo.jpg">
                                    </div>
                                </div>
                            </div> -->
								</div>
							</div>

							<div class="product__discount">
								<div class="section-title product__discount__title">
									<h2>분류 추천</h2>
								</div>
								<div class="row">
									<div class="product__discount__slider owl-carousel">
									
									
										<div class="col-lg-4">
											<div class="product__discount__item">
												<div class="product__discount__item__pic set-bg"
													data-setbg="img/product/discount/pd-1.jpg">
												</div>
												<div class="product__discount__item__text">
													<h5>
														<a href="#"> 파카 조터 스텐레스 스틸 CT 샤프</a>
													</h5>
												</div>
											</div>
										</div>
										
										
										
									 	<div class="col-lg-4">
											<div class="product__discount__item">
												<div class="product__discount__item__pic set-bg"
													data-setbg="img/product/discount/pd-2.jpg">
													<div class="product__discount__percent">추천!</div>
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__discount__item__text">
													<span>Vegetables</span>
													<h5>
														<a href="#">Vegetables’package</a>
													</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="product__discount__item">
												<div class="product__discount__item__pic set-bg"
													data-setbg="img/product/discount/pd-3.jpg">
													<div class="product__discount__percent">추천!</div>
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__discount__item__text">
													<span>Dried Fruit</span>
													<h5>
														<a href="#">Mixed Fruitss</a>
													</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="product__discount__item">
												<div class="product__discount__item__pic set-bg"
													data-setbg="img/product/discount/pd-4.jpg">
													<div class="product__discount__percent">추천!</div>
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__discount__item__text">
													<span>Dried Fruit</span>
													<h5>
														<a href="#">Raisin’n’nuts</a>
													</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="product__discount__item">
												<div class="product__discount__item__pic set-bg"
													data-setbg="img/product/discount/pd-5.jpg">
													<div class="product__discount__percent">추천!</div>
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__discount__item__text">
													<span>Dried Fruit</span>
													<h5>
														<a href="#">Raisin’n’nuts</a>
													</h5>
												</div>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="product__discount__item">
												<div class="product__discount__item__pic set-bg"
													data-setbg="img/product/discount/pd-6.jpg">
													<div class="product__discount__percent">추천!</div>
													<ul class="product__item__pic__hover">
														<li><a href="#"><i class="fa fa-heart"></i></a></li>
														<li><a href="#"><i class="fa fa-retweet"></i></a></li>
														<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
													</ul>
												</div>
												<div class="product__discount__item__text">
													<span>Dried Fruit</span>
													<h5>
														<a href="#">Raisin’n’nuts</a>
													</h5>
												</div>
											</div>
										</div> 
										
										
									</div>
								</div>
							</div>
							
<!-- ----------------------- 필터된 상품 보여주기  -------------------------- -->		
					
							<div id= "showlist" class="row">								
										<div class="product__item__text">
											<h6>
												<a href="#"></a>
											</h6>
										</div>							
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