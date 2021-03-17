<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!--${pageContext.request.contextPath}" 이게 web-app을 가리킨다!!!!!   -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- 그래서 path 써주고 그 아래 소스 파일 이름 지정해주면 된다 ! 이건 진경언니가 준거 !   -->
<link rel="stylesheet" href="${path}/resources/css/reviewList.css">

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        window.onload = function () {
            var showPopup = document.getElementById('showPopup');
            showPopup.onclick = function showPopup() {
                window.open("chargePoint.jsp",
                    "포인트충전", "width=450, height=600, left=400, top=100");
            }
        };

    </script>
    <style>
        .pointContainer {
            margin: 0;
            width: 1140px;
        }

        .pointContent {
            padding: 40px 60px;
            height: 100vh;
        }

        #point {
            font-weight: bold;
            font-size: 33px;
        }

        #currentPoint {
            display: flex;
            border: 1px solid rgba(189, 186, 186, 0.829);
            width: 85%;
            margin-bottom: 4%;
            border-radius: 2%;
        }

        #nowPoint {
            font-size: 22px;
            padding: 7px;
        }

        #currentPoint button {
            float: right;
        }

        #currentPoint table {
            border-spacing: 40px;
        }

        #chargeBtn input {
            display: inline-block;
            padding: 18px 26px;
            color: #999;
            background-color: #eee;
            border: 0;
            cursor: pointer;
            border-radius: 5px;
            margin-left: 52%;
        }

        #chargeBtn {
            text-align: center;
            margin: auto;
            float: right;
            font-weight: bold;
        }

        #chargeBtn input {
            font-size: 20px;
            font-weight: bold;
        }

        #tableWrapper {
            border: 1px solid rgba(189, 186, 186, 0.829);
            width: 85%;
            height: 60%;
            border-radius: 2%;
        }

        #tableWrapper table {
            width: 100%;
            border-collapse: collapse;
        }

        #tableWrapper table td {
            text-align: center;
            padding: 7px;

        }

        #tableWrapper table th {
            background-color: grey;
            padding: 13px;
        }
    </style>
</head>

<body>
    <div class="pointContainer">
        <div class="pointContent">
            <h1>포인트</h1>
            <div id="currentPoint">
                <table>
                    <tr>
                        <th id="nowPoint">나의 현재 포인트</th>
                        <th id="point">25000원</th>
                    </tr>
                </table>
                <div id="chargeBtn">
                    <input type="button" value="포인트충전" id="showPopup" />
                </div>
            </div>
            <div id="tableWrapper">
                <table class="useInfo">
                    <tr>
                        <th>이력번호</th>
                        <th>이용날짜</th>
                        <th>이용내역</th>
                        <th>변동포인트</th> 
                        <th>누적포인트</th>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td>2021-02-01</td>
                        <td>헬스장 체험 신청</td>
                        <td>-5000</td>
                        <td>25000</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>