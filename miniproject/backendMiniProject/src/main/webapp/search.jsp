<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>
    <link rel="stylesheet" type="text/css" href="./css/menu.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <style type="text/css">
       .hi {
        	font-size: 30px;
        	color: gray;
        	font-weight: bold;
        	text-align: center;
        	margin-top: 60px;
        }
    </style>
</head>

<body>
    <div class="menu">
        <ul style="list-style-type:none">
            <li>
            <c:if test="${empty login}">
            <a href="./login.jsp">로그인</a>
            </c:if>
            <c:if test="${!empty login}">
            <a href="./mypage.jsp">내정보</a>
            </c:if>
            </li>
            <li><a href="./adduser.jsp">회원가입</a></li>
            <li><a href="./product.jsp">상품정보</a></li>
            <li style="float: left"><a href="./index.jsp">하옴머리</a></li>
        </ul>
    </div>
    
    <form method="post" action="searchId.do">
	<div class="hi">
	이름을 입력해주세요
	<hr>
	<br>
	이름 : <input class="hi" type="text" name="name">
	<input class="hi" type="submit" value="검색">
	</div>
	</form>
	
    <div class="footer">
        <div>
            <div class="footer2">
                <h4>주소</h4>
                <span>제주특별시 한경면 저지리</span>
            </div>
            <div class="footer3">
                <h4>SNS</h4>
                <a href="https://facebook.com" target="_blank"><img src="./image/facebook.png"></img></a>
                <a href="https://twitter.com" target="_blank"><img src="./image/twitter.png"></a>
                <a href="https://www.instagram.com" target="_blank"><img src="./image/instagram.png"></a>
            </div>
        </div>
    </div>

</body>

</html>

