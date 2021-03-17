<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!--${pageContext.request.contextPath}" 이게 web-app을 가리킨다!!!!!   -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
		                <!-- float left -->
		                <div>
		                    <div class="tabBox" >
		                      <img src="${path}/resources/img/한강.PNG" class="clubPic" title="자바에서 모임사진 값 받는 곳">
		                       <div class="title_text">
		                            <h2 title="모임타이틀 값 받기">매일 20분씩 한강에서 뛰어요!</h4>
		                            <h4>매일매일 한강에서 함께 뛴다면 ! 걱정없이 고칼로리 음식도 먹을 수 있답니다! </h5>
		                       </div>
		                       <div class="reviewBtn"><button style="width:130px;height:55px;"><a href="#" style="text-decoration: none; font-size: 19px; font-weight:700;color:black;" >후기작성</a></button></div>
		                    </div>
		                </div>
		        </section>
		        <section id="ReviewContent2" style="margin-bottom:20px;">
		                <!-- float left -->
		                <div>
		                    <div class="tabBox" >
		                        <img src="${path}/resources/img/하이킹.PNG" class="clubPic" title="자바에서 모임사진 값 받는 곳">
		                        <div class="title_text">
		                             <h2 title="모임타이틀 값 받기">코딩 연습 같이하실 분</h4>
		                             <h4>코딩러 됩시다.매주 화목금 신촌에서 만나요👱‍♀️</h5>
		                        </div>
		                        <div class="reviewBtn"><button style="width:130px;height:55px;"><a href="#" style="text-decoration: none; font-size: 19px; font-weight:700;color:black;" >상세보기</a></button></div>
		                     </div>
		                </div>
		        </section> 
		    </div>        
		</div>
</body>
</html>
