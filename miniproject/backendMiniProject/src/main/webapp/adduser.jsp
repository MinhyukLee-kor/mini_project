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
    <title>ȸ������</title>
    <link rel="stylesheet" type="text/css" href="./css/menu.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
</head>
<style type="text/css">
    .title h2 {
        font-size: 40px;
    }

    input {
        font-size: 30px;
    }
</style>

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

    <form class="form" id="form" action="userInsert.do" method="post">
        <div>
            <div>
                <table style="margin-left: 10px; font-size: 30px;">
                    <div class="container">
                        <div class="title">
                            <h2>ȸ������ ���</h2>
                            <hr>
                        </div>
                        <tr>
                            <td style="font-weight:bold">�̸�</td>
                            <td><input name="name" type="text" id="name" maxlength="20" style="margin-left: 10px" pattern=".{2,20}"
                                    oninvalid="swal('�̸��� 2~20�ڸ� �Դϴ�.')"><span
                                    style="color:lightcoral; margin-left: 10px;">2~20�ڸ�</span></td>

                        </tr>
                        <tr>
                            <td style="font-weight:bold">���̵�</td>
                            <td>
                                <input name="id" type="text" id="id" maxlength="10" minlength="6" style="margin-left: 10px"
                                    pattern=".{6,10}" oninvalid="swal('���̵�� 6~10�ڸ� �Դϴ�.')"><span
                                    style="color:lightcoral; margin-left: 10px;">6~10�ڸ�</span>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight:bold">��й�ȣ</td>
                            <td>
                                <input name="pw" type="password" id="pw" maxlength="20" minlength="4" style="margin-left: 10px"
                                    pattern=".{4,20}" oninvalid="swal('��й�ȣ�� 4~20�ڸ� �Դϴ�.')"><span
                                    style="color:lightcoral; margin-left: 10px;">4~20�ڸ�</span>
                            </td>
                        </tr>

                        <tr>
                            <td style="font-weight:bold">�̸���</td>
                            <td>
                                <input name="email" type="text" style="margin-left: 10px">
                                <span class="a">@</span>
                                <input name="email2" id="email" type="text">
                                <select id="select" style="font-size: 30px;" onchange="emailaddress();">
                                    <option value="" selected>�����Է�</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="gmail.com">gmail.com</option>
                                    <option value="hanmail.net">hanmail.net</option>
                                    <option value="yahoo.com">yahoo.com</option>
                                </select>
                            </td>
                        </tr>
                    </div>
                    <div style="margin: 20px; font-size: 25px;">
                        �̸�, ���̵�, ��й�ȣ�� �ʼ� �Է� �����Դϴ�.
                    </div>
                </table>

            </div>

            <div>
                <div class="btnarea">
                    <button type="submit" class="btn">ȸ������</button>&nbsp;&nbsp;
                    <button type="reset" class="btn">�� ��</button>
                </div>
            </div>
        </div>
    </form>


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

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $('#form').submit(function (evt) {
            let name = $('#name').val();
            let id = $('#id').val();
            let pw = $('#pw').val();
            let pwCheck = $('pwCheck').val();
            if (name === "") {
                evt.preventDefault();
                swal("�̸��� �Է����ּ���");
            } else if (id === "") {
                evt.preventDefault();
                swal("���̵� �Է����ּ���");
            } else if (pw === "") {
                evt.preventDefault();
                swal("��й�ȣ�� �Է����ּ���");

            }
        });

        function emailaddress() {
            var email = $("#select option:checked").text();
            if (email === '�����Է�') {
                email = ""
                document.getElementById("email").value = email;
                document.getElementById("email").readOnly = false;
            } else {
                document.getElementById("email").value = email;
                document.getElementById("email").readOnly = true;

            }
        }


    </script>
</body>

</html>