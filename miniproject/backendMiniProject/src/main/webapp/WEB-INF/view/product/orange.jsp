<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page session="true" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>제주감귤</title>
        <link href="./css/menu.css" rel="stylesheet" type="text/css">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
            rel="stylesheet">
        <style type="text/css">
            .product {
                text-align: center;
                padding-right: 100px;
            }

            .back {
                float: left;
                font-weight: bold;
                font-size: 30px;
                padding: 15px;
                margin: 15px;
                border: none;
                border-radius: 15px;
                background-color: lightblue;
                color: black;
            }

            .back:hover {
                background-color: lightcoral;
                color: white
            }

            #select,
            span {
                font-size: 25px;
                font-weight: bold
            }

            #sum,
            #num {
                text-align: right;
                font-weight: bold;
                font-size: 25px;
            }

            .product h1 {
                font-size: 40px;
            }

            p,
            h3 {
                font-size: 25px;
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
            <div>
                <button class="back" onclick="history.back()">뒤로가기</button>
            </div>
            <div style="float:left">
                <div class="product">
                    <h1>제주 감귤</h1>
                    <img src="./image/orange.jpg">
                </div>
            </div>
            <div style="float:left;">
                <div style="margin-top: 30px;">
                    <h2 style="font-size:40px;">당도 높은 제주 맛좋은 감귤</h2>
                    <p>날씨가 추워지는 겨울철 국민 간식!!</p>
                    <p>중간 유통 없이 생산자가 바로 판매!!</p>
                    <p>직접 하나하나 포장합니다.</p>
                </div>
                <div style="margin-top: 50px">
                    <h3>옵션선택</h3>
                    <div style="font-size:20px">
                        <span>상품 : </span>
                        <select id="select" onchange="select()">
                            <option type="number" value="14000" selected>제주 감귤 5Kg / 14,000원</option>
                            <option type="number" value="23000">제주 감귤 10Kg / 23,000원</option>
                        </select>
                        <br>
                        <br>
                        <span>수량 : </span>
                        <input id="num" type="number" value="0" style="text-align: right;" readonly>
                        <button id="minus" type="button" onclick="minus()">-</button>
                        <button id="plus" type="button" onclick="plus()">+</button>
                        <br>
                        <br>
                        <span>금액 : <input id="sum" type="number" value="0" readonly> 원</span>
                    </div>

                </div>
                <div style="margin-top: 30px;">
                    <button class="btn" type="submit" onclick="swal('미구현')">구매하기</button>
                    <button class="btn" type="submit" onclick="swal('미구현')">장바구니</button>
                </div>
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
                    <a href="https://facebook.com" target="_blank"><img src="./image/facebook.png"></a>
                    <a href="https://twitter.com" target="_blank"><img src="./image/twitter.png"></a>
                    <a href="https://www.instagram.com" target="_blank"><img src="./image/instagram.png"></a>
                </div>
            </div>
        </div>






        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script type="text/javascript">
            let product = $('#select option:selected').val();
            let result = document.getElementById("num").value;

            function plus() {
                result++;
                document.getElementById("num").value = result;
                document.getElementById("sum").value = result * product
            }

            function minus() {
                if (result > 0) {
                    result--;
                    document.getElementById("num").value = result;
                    document.getElementById("sum").value = result * product
                }
                if (result <= 0) {
                    swal('1 이상을 입력해주세요.')
                    document.getElementById("num").value = 0;
                }
            }

            function select() {
                product = $('#select option:selected').val();
                document.getElementById("sum").value = result * product
            }


        </script>
    </body>

    </html>