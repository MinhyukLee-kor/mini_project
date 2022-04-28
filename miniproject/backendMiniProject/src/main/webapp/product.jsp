<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품정보</title>
    <link rel="stylesheet" type="text/css" href="./css/menu.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
</head>
<style type="text/css">
    .wrapper {
        margin-left: 15px;
        margin-right: 15px;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 1rem;
    }

    .card {
        background-color: white;
        box-shadow: 5px 5px 5px gray;
    }

    .card header {
        font-size: 1.5rem;
        padding: 0.5em;
    }

    .card p {
        padding: 0.5rem;
        line-height: 1.5rem;
    }

    .card h3 {
        font-size: 40px;
    }

    p a {
        text-decoration: none;
        font-weight: bold;
        color: brown;
        font-size: 30px;
    }
</style>

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
    <div class="wrapper">
        <div class="card">
            <header style="margin-left: 30px;">
                <h3>귤 5Kg</h3>
            </header>
            <figure>
                <img src="./image/orange.jpg" style="width:280px;">
            </figure>
            <p style="text-align: center;"><a href="orange.do">상품설명</a></p>
        </div>

        <div class="card">
            <header style="margin-left: 30px;">
                <h3>귤 10Kg</h3>
            </header>
            <figure>
                <img src="./image/orange.jpg" style="width:280px;">
            </figure>
            <p style="text-align: center;"><a href="orange.do">상품설명</a></p>
        </div>

        <div class="card">
            <header style="margin-left: 30px;">
                <h3>콜라비 10Kg</h3>
            </header>
            <figure>
                <img src="./image/콜라비.jpg" style="width:280px;">
            </figure>
            <p style="text-align: center;"><a href="kolabi.do">상품설명</a></p>
        </div>

        <div class="card">
            <header style="margin-left: 30px;">
                <h3>콜라비 15Kg</h3>
            </header>
            <figure>
                <img src="./image/콜라비.jpg" style="width:280px;">
            </figure>
            <p style="text-align: center;"><a href="kolabi.do">상품설명</a></p>
        </div>

    </div>

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