<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

function makeFormat(res){
			for(int i=0; i<res.length; i++){
			
			"<div class="col-lg-4 col-md-6 col-sm-6">"
                            "<div class="product__item">"
                                "<div class="product__item__pic set-bg" scr=" + res[i].img +  ">"
                                    "<ul class="product__item__pic__hover">"
                                        "<li><a href="#"><i class="fa fa-heart"></i></a></li>"
                                        "<li><a href="#"><i class="fa fa-retweet"></i></a></li>"
                                        "<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>"
                                    "</ul>"
                                "</div>"
                                "<div class="product__item__text">"
                                    "<h6><a href="#">Crab Pool Security</a></h6>"
                                "</div>"
                            "</div>"
                        "</div>"

			}
		}
		
<script type="text/javascript"></script>
		
</body>
</html>