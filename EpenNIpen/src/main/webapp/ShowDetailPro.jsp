<%-- <%@page import="model.TableDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
<div id=showsearch> -->

<%
ArrayList<TableDTO> search_list = (ArrayList)request.getAttribute("search_list");
%>

<%
for(TableDTO search : search_list){
%>
	<%= search.getProduct() %><br>
	<%= search.getUrl_1() %>
	<img src = "<%= search.getImg() %>">
	<hr>
<%} %>


</body>
</html> --%>