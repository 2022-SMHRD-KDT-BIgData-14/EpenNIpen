<%@page import="model.ProductDAO"%>
<%@page import="model.QuestionDAO"%>
<%@page import="model.ProductDTO"%>
<%@page import="model.QuestionDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>나의 개발 유형찾기</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/form.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  </head>
  <body>
  <% MemberDTO info = (MemberDTO)session.getAttribute("info");%>
  
  
  <div class="container">
  <div class="row">
  <div class="col-lg-12">
    <section id="survey">
    
    
      <div class="wrapper">
        <form id="form" action="InsertQuestion" method="post">
                    <div class="test">
            <div class="question_container">
              <h3 class="number">1/3</h3>
              <h3 class="question">나의 연인에게 선물하고 싶은 필기구는?</h3>
            </div>
            <div class="answer">
              <div class="img">
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_1" value="b"/>
                <label for="one"> <span>볼펜</span><br> <img src="img/05.jpg"> </label>
              </div>
              <div class="img">
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_1" value="h"/>
                <label for="one"> 형광펜 <img src="img/06.jpg"> </label>
              </div>
              <div class="img">
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_1" value="f"/>
                <label for="one">  <span>만년필</span><br><img src="img/07.jpg"> </label>
              </div>
              <div class="img">
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_1" value="s"/>
                <label for="one"> 샤프 <img src="img/08.jpg"> </label>
              </div>
              
            </div>
            <div class="btn_wrap">
              <button class="next_btn">다 음</button>
            </div>
          </div>
          <div class="test">
            <div class="question_container">
              <h3 class="number">2/3</h3>
              <h3 class="question">나의 집을 인테리어한다면 우리집의 벽지는?</h3>
            </div>
            <div class="answer">
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_2" value="s"/>
                <label for="one"> <img src="img/01.jpg"> </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_2" value="p"/>
                <label for="one"> <img src="img/02.jpg"> </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_2" value="u"/>
                <label for="one"> <img src="img/03.jpg"> </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_2" value="h"/>
                <label for="one"> <img src="img/04.jpg"> </label>
              </div>
              
            </div>
            <div class="btn_wrap btn_sort">
              <button class="prev_btn">이 전</button>
              <button class="next_btn">다 음</button>
            </div>
          </div>

            <div class="test">
            <div class="question_container">
              <h3 class="number">3/3</h3>
              <h3 class="question">나의 MBTI는?</h3>
            </div>
            <div class="answer">
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="i"/>
                <label for="one"> ISTJ </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="i"/>
                <label for="one"> ISFJ </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="i"/>
                <label for="one"> INFP </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="i"/>
                <label for="one"> INTJ </label>
              </div>
              <br>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="i"/>
                <label for="one"> ISTP </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="i"/>
                <label for="one"> ISFP </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="i"/>
                <label for="one"> INFJ </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="i"/>
                <label for="one"> INTP </label>
              </div>
              <br>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="e"/>
                <label for="one"> ESTP </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="e"/>
                <label for="one"> ESFP </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="e"/>
                <label for="one"> ENFP </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="e"/>
                <label for="one"> ENTP </label>
              </div>
              <br>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="e"/>
                <label for="one"> ESTJ </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="e"/>
                <label for="one"> ESFJ </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="e"/>
                <label for="one"> ENFJ </label>
              </div>
              <div>
                <!-- input, label의 id, for 맞춰주기 -->
                <input id="one" type="radio" name="answer_3" value="e"/>
                <label for="one"> ENTJ </label>
              </div>
            </div>
            <div class="btn_wrap btn_sort">
              <button class="prev_btn">이 전</button>
              <input type="hidden" name="id" value="<%= info.getId()%>">
                <input type="submit" value="제 출"  onclick="location.href='result.jsp'"class="submit_btn" />
                
                
            </div>
          </div>
        </form>
      </div>
    </section>
    </div>
    </div>
    </div>
    <script type="text/javascript" src = "js/form.js"></script>
  </body>
</html>
