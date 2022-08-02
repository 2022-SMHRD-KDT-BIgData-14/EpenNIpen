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
    <section id="main_contents">
        <div class="wrapper">
            <div class="result">
                <div class="titles">
                    <h3>나의 드림펜은?!</h3>
                    <h1>제품이름</h1>
                </div>
                <div class="result_img">
                <!-- 제품 이미지 넣어주기 -->
                    <!-- <img src="../img/프론트엔드.png" alt="forntend"> -->
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