<%@page import="controller.InsertQuestion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.QuestionDTO"%>
<%@page import="model.QuestionDAO"%>
<%@page import="model.MemberDTO"%>
<%@page import="model.ProductDAO"%>
<%@page import="model.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- meta tage -> 검색 엔진이 해당 사이트를 찾을 떄 참조하는 코드 -->
    <!-- og -> open graph  -->
    <meta property = "og:title" content="나의 개발 유형은?"/>
    <meta property = "og:image" content=""/>
    <meta property = "og:url" content=""/>
    <meta property = "og:description" content="나에게 꼭 맞는 개발 유형은 무엇일까?"/>

    <title>나의 드림펜 찾기</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/result.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>

 <%
 	/* form.jsp에서 선택한 답변들을 InsertQuestion에서 product로 조합 후 발송한 것을 request.getAttribute로 받기 */
 	String product = (String)request.getAttribute("product");
 	
 	/* 로그인정보를 유지하기 위해 info 받기 */
	MemberDTO info = (MemberDTO)session.getAttribute("info");
 	
 	/* 로그인한 계정을 매개변수로 넣기 */
 	/* QuestionMapper의 QuestionResult로 해당 계정으로 수행한 직전 결과를 불러오기 */
	QuestionDTO question_result = new QuestionDAO().QuestionResult(info.getId());
	
 	/* 제품의 이름 및 이미지를 불러오기 위해 매개변수로 InsertQuestion에서 가져온 제품명을 매개변수로 넣기 */
	ProductDTO product_detail = new ProductDAO().detailPage(product);
	
%> 

    <section id="main_contents">
        <div class="wrapper">
            <div class="result">
                <div class="titles">
                    <h3>나의 드림펜은?!</h3>
                    <h1><%= product_detail.getProduct()%></h1>
                </div>
                <div class="result_img">
                <!-- 제품 이미지 넣어주기 -->
                <img src="<%=product_detail.getImg()%>">
                </div>
            </div>
            <div class="result_explains">
                <div class="explain">
                    
                </div>
               
               
            </div>
           
            <div class="share">
                <div class="url">
                    <button class="copy_btn" type="button">URL 복사하기</button>
                </div>
                
            </div>
            <div class="buttons">
                <ul>
                    <li>
                        <h3>...이건 아니야! 다시할래!</h3>
                        <a href="index.jsp">
                            <button type="button">테스트 다시하기</button>
                        </a>
                    </li>
                    <li>
                        <h3>다른 사람들은 어떤 유형일까?</h3>
                        <a href="#">
                            <button type="button">다른 결과 알아보기</button>
                        </a>
                    </li>
                    
                   
                </ul>
            </div>
           
             
        </div>
    </section>
    <script type="text/javascript" src="js/result.js"></script>
</body>
</html>