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
    <title>하옴머리</title>
    <link rel="stylesheet" type="text/css" href="./css/menu.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <style type="text/css">
        .mainimg {
            float: left;
            width: 900px;
            height: 500px;
            opacity: 0.8;
            padding-right: 50px;
        }

        .right h1 {
            color: gray;
            font-size: 50px;
        }

        .right p {
            font-size: 30px;
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
    <div>
        <img class="mainimg" id="img" src="./image/제주도2.jpg">
    </div>

    <div class="right">
        <h1>하옴머리란?</h1>
        <p>제주도에 있는 우리 밭이 위치한 곳을 의미</p>
        <br>
        <br>
        <h1>전국 배송</h1>
        <p>귤, 콜라비, 비트, 옥수수, 고구마 등 판매</p>
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

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var img = [
                { img1: './image/제주도2.jpg', img2: './image/제주도.jpg' },
            ]
            $('#img').mouseenter(function () {
                $(this).attr('src', img[0].img2)
            }).mouseleave(function () {
                $(this).attr('src', img[0].img1)
            })
        });
    </script>
</body>

</html>