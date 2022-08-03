<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>나의 드림펜 찾기</title>
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<% MemberDTO info = (MemberDTO)session.getAttribute("info");%>
	<!-- 드림펜찾기 기능은 회원만 이용할 수 있는 기능으로, 로그인이 이행되지 않았을 시 메인페이지로 이동시킨다. -->
	<%if(info==null){%>
	<script type="text/javascript">
		alert("로그인 후 이용하실 수 있습니다.")
		location.href= "MainPage.jsp";
	</script>
	<% } %>

	<section id="main_contents">
	<div class="container">
		<div class="col-lg-3">
			<div class="col-lg-6">
				<h3 class="main_title">나의 드림펜</h3>


				<div class="button">
					<a href="form.jsp">
						<button class="start" type="button">시작하기</button>
					</a>
				</div>

			</div>

		</div>
		</div>
	</section>
</div>
</body>
</html>
