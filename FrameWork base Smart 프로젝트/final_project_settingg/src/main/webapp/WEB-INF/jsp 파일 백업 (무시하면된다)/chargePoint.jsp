<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!--${pageContext.request.contextPath}" 이게 web-app을 가리킨다!!!!!   -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- 그래서 path 써주고 그 아래 소스 파일 이름 지정해주면 된다 ! 이건 진경언니가 준거 !   -->

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .pointContainer{
            margin: 10% 6%;
        }
        .pointContainer h2{
            line-height: 17px;
        }
        .pText{
            margin: 3% 0 2% 0;
            
        }
        .pText p{
            font-size: 14px;
            font-weight: 600;
            color: rgb(158, 158, 158);
            line-height: 7px;
        }
        .pointTable{
            margin: 1% 0 2% 0;
        }
        .pointTable input{
            color: rgb(255, 255, 255);
            background-color: rgb(67, 177, 251);
            border: none;
            /* padding: 3px 8px; */
            width: 90px;
            height: 25px;
            border-radius : 3%;
        }
        .pointTable td:nth-child(2){
            padding-right: 100px;
        }
        .pointTable td{
            padding: 10px 4px 10px 0;
        }
    </style>
</head>
<body>
    <div class="pointContainer">
        <h2>다양한 모임에 참여하여</h2>
        <h2>습관형성에 재미를 더하세요!</h2>
        <div class="pText">
            <p>더하기에서 포인트를 이용해서 모임에 참여하고 꿈을</p> 
            <p>이뤄보세요. 다양한 모임을 통해 습관 형성의 재미를</p>
            <p>느낄 수 있습니다.</p>
        </div>
        <table class="pointTable">
            <tr>
                <td><img src="${path}/resources/img/good.png" width="24px" height="24px"></td>
                <td> 1000 포인트</td>
                <td><input type="button" value="1,000 원" id="1000"></td>
            </tr>
            <tr>
                <td><img src="${path}/resources/img/good.png" width="24px" height="24px"></td>
                <td> 3000 포인트</td>
                <td><input type="button" value="3,000 원" id="3000"></td>
            </tr>
            <tr>
                <td><img src="${path}/resources/img/good.png" width="24px" height="24px"></td>
                <td> 5000 포인트</td>
                <td><input type="button" value="5,000 원" id="5000"></td>
            </tr>
            <tr>
                <td><img src="${path}/resources/img/good.png" width="24px" height="24px"></td>
                <td> 10000 포인트</td>
                <td><input type="button" value="10,000 원" id="10000"></td>
            </tr>
            <tr>
                <td><img src="${path}/resources/img/good.png" width="24px" height="24px"></td>
                <td> 25000 포인트</td>
                <td><input type="button" value="25,000 원" id="25000"></td>
            </tr>
            <tr>
                <td><img src="${path}/resources/img/good.png" width="24px" height="24px"></td>
                <td> 50000 포인트</td>
                <td><input type="button" value="50,000 원" id="50000"></td>
            </tr>
            <tr>
                <td><img src="${path}/resources/img/good.png" width="24px" height="24px"></td>
                <td> 100000 포인트</td>
                <td><input type="button" value="100,000 원" id="100000"></td>
            </tr>
        </table>
    </div>      

</body>
</html>