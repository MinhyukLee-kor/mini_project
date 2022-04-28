<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 성공</title>
    <link rel="stylesheet" type="text/css" href="./css/menu.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
        .hi2 {
        	color : black;
        	font-size: 40px;
        	
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
	<c:if test="${!empty vo}">
		<div class="hi">
		<span class="hi2">${vo.name}</span> 님의 아이디는 <span class="hi2">${vo.id}</span> 입니다.<br>
		<a href="/backendMiniProject/index.jsp">홈 화면으로 이동</a>
		</div>
	</c:if>
	
	<c:if test="${empty vo}">
		<div class="hi">
		검색된 아이디가 없습니다.<br>
		<a href="/backendMiniProject/search.jsp">다시 입력</a>
		</div>
	</c:if>
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