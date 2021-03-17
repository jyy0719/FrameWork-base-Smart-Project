<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!--${pageContext.request.contextPath}" 이게 web-app을 가리킨다!!!!!   -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- JSTL 날짜 형식 바꾸는 태그 라이브러리 , 노션가면 주소 있음  
	fmt:formatDate : Date 형을 받아서 원하는 포멧으로 날짜 형태를 변경시켜 준다.-->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 그래서 path 써주고 그 아래 소스 파일 이름 지정해주면 된다 ! 이건 진경언니가 준거 !   -->
<link rel="stylesheet" href="${path}/resources/css/reviewList.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>모임리뷰리스트</title> 
</head>
<body>	
		<div class="reviewContainer">
		    <div class="reviewTab" style="text-align:left" >
		        <input class="tabs" id="tab1" type="radio" name="tabs" checked>
		        <label for="tab1">작성가능한 리뷰</label>
		        <input class="tabs" id="tab2" type="radio" name="tabs">
		        <label for="tab2">내가 작성한 리뷰</label>
		   
		        <section id="ReviewContent1" style="margin-bottom:20px;">
		        <c:forEach var="noRvw" items="${selectNotReview}">
		                <!-- float left -->
		                <div>
		                    <div class="tabBox" >		                    
		                      <img src="${path}/resources/img/${noRvw.clubThumbPic}" class="clubPic" title="자바에서 모임사진 값 받는 곳">
		                       <div class="title_text">
		                           <h2 title="모임타이틀 ">${noRvw.clubThumbPic}</h2>
		                         <%--     <!-- parseDate는 날짜 값을 string으로 받았을 경우 date타입으로 형변환 한 후 formatdate의 형태로 변환(날짜바꾸기)-->
		                            ${noRvw.startDate} ~ ${noRvw.endDate} --%>
		                       </div>
		                       <div class="reviewBtn"><button style="width:130px;height:55px;"><a href="#" style="text-decoration: none; font-size: 19px; font-weight:700;color:black;" >후기작성</a></button></div>
		                    </div>
		                </div>
		        </c:forEach>
		        </section>
		        <section id="ReviewContent2" style="margin-bottom:20px;">
		        <c:forEach var="okayRvw" items="${selectOkayReview}">
		                <!-- float left -->
		                <div>
		                    <div class="tabBox" >
		                        <img src="${path}/resources/img/${okayRvw.clubThumbPic}" class="clubPic" title="자바에서 모임사진 값 받는 곳">
		                        <div class="title_text">
		                             <h2 title="모임타이틀">${okayRvw.clubThumbPic}</h2>
									
		                        </div>
		                        <div class="reviewBtn"><button style="width:130px;height:55px;"><a href="#" style="text-decoration: none; font-size: 19px; font-weight:700;color:black;" >상세보기</a></button></div>
		                     </div>
		                </div>
		        </c:forEach>
		        </section> 
		    </div>        
		</div>
</body>
</html>
