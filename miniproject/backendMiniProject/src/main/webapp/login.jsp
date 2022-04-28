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
    <title>�α���</title>
    <link rel="stylesheet" type="text/css" href="./css/menu.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <style type="text/css">
        .title h2 {
            font-size: 40px;
        }

        input {
            font-size: 30px;
        }
    </style>
</head>

<body>
    <div class="menu">
        <ul style="list-style-type:none">
            <li>
            <c:if test="${empty login}">
            <a href="./login.jsp">�α���</a>
            </c:if>
            <c:if test="${!empty login}">
            <a href="./mypage.jsp">������</a>
            </c:if>
            </li>
            <li><a href="./adduser.jsp">ȸ������</a></li>
            <li><a href="./product.jsp">��ǰ����</a></li>
            <li style="float: left"><a href="./index.jsp">�ϿȸӸ�</a></li>
        </ul>
    </div>
    <div class="container" style="font-size: 30px;">
        <div class="title">
            <h2>�α���</h2>
            <hr>
        </div>

        <form class="form" id="form" action="login.do" method="POST">
            <div style="text-align: center;">
                <div class="idarea">
                    <span class="idarea2">���̵�</span>
                    <input type="text" name="id" id="id" pattern=".{6,12}" oninvalid="swal('���̵�� 6~12�ڸ� �Դϴ�.')">
                </div>

                <div class="pwarea">
                    <span class="pwarea2">��й�ȣ</span>
                    <input type="password" name="pw" id="pw" pattern=".{4,20}" oninvalid="swal('��й�ȣ�� 4~20�ڸ� �Դϴ�.')">
                </div>

                <div class="btnarea">
                    <button type="submit" class="btn" id="login">�α���</button>&nbsp;&nbsp;
                    <button type="reset" class="btn">�� ��</button>&nbsp;&nbsp;
                    <a href="./search.jsp"><button type="button" class="btn">���̵� ã��</button></a>
                </div>

            	</div>
    	</form>
	</div>
    <div class="footer">
        <div>
            <div class="footer2">
                <h4>�ּ�</h4>
                <span>����Ư���� �Ѱ�� ������</span>
            </div>
            <div class="footer3">
                <h4>SNS</h4>
                <a href="https://facebook.com" target="_blank"><img src="./image/facebook.png"></img></a>
                <a href="https://twitter.com" target="_blank"><img src="./image/twitter.png"></a>
                <a href="https://www.instagram.com" target="_blank"><img src="./image/instagram.png"></a>
            </div>
        </div>
    </div>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $('#form').submit(function (evt) {
            let id = $('#id').val();
            let pw = $('#pw').val();
            if (id === "") {
                evt.preventDefault();
                swal("���̵� �Է����ּ���");
            } else if (pw === "") {
                evt.preventDefault();
                swal("��й�ȣ�� �Է����ּ���");
            } else {
            	$.ajax({
                    url: 'login.do',
                    type: 'POST',
                    data:{id:$('#id').val(), pw:$('#pw').val()},
                    dataType: 'text',
                 })
              }
            });
        
    </script>
</body>

</html>