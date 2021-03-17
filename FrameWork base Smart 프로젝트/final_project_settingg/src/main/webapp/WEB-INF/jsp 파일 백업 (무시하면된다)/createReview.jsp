<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!--${pageContext.request.contextPath}" 이게 web-app을 가리킨다!!!!!   -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- 그래서 path 써주고 그 아래 소스 파일 이름 지정해주면 된다 ! 이건 진경언니가 준거 !   -->
<script src="${path}/resources/js/jquery-1.12.4.js"></script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모임리뷰남기기</title>
    <script>
        $(document).ready(function () {
            $('.starContainer span').click(function () {
                $(this).parent().children('span').removeClass('on');
                $(this).addClass('on').prevAll('span').addClass('on');
                return false;
            });
        });
    </script>
    <style>
        .createContainer {
            margin: 0;
            width: 1140px;
            /* padding: 5%; */
            /* background-color: white; */
        }

        /*후기페이지랑 후기작성페이지를 동일한 레이아웃을 가지기 위해 div 묶어 padding 값을 주었다*/
        .reviewContent {
            padding: 35px 60px;
        }

        /*모임div 정보 css*/
        .clubInfoBox {
            display: flex;
            /* border: 2px solid #eee; */
            margin: 30px 0px 30px 0px;
            box-shadow: 0.5px 0.5px 0.5px 0.5px #8299d841;
            /* background-color: whitesmoke; */
        }
        .createClubPic {
            width: 170px; 
            height: 120px;  
            /* border-radius: 50%;  테두리 뭐가 더 나은지 여쭤보기*/
            border-radius: 5px 5px 5px 5px;
            margin:20px 30px 20px 30px ;
            box-shadow: 1px 1px 1px  #8299d879;

        }
        .clubTitle {
            width: 600px;
            margin: 12px 25px 12px 25px;
            text-align: left;
        }
        /*별점 css*/
        .starReview {
            /* background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0; */
            background: url("${path}/resources/img/star.png") no-repeat right 0;
            background-size: auto 100%;
            width: 30px;
            height: 30px;
            display: inline-block;
            text-indent: -9999px;
            cursor: pointer;
        }

        .starReview.on {
            background-position: 0 0;
        }

        .starContainer{
            margin: 30px 0 30px 0;
        }

        /*p 태그 서식 */
        .question {
            font-size: 18px;
            font-weight: 500;
        }
        #addBtn{
            padding: 10px 20px;
            color: #999;
            /* background-color: #fdfdfd; */
            border: 0;
            cursor: pointer;
            border-radius: 5px;
            float: right;
        }
        .fileUpload{
        	padding : 2% 0;
        }
        .fileUpload input[type="file"] {
            position: absolute;
            width: 0;
            height: 0;
            padding: 0;
            overflow: hidden;
            border: 0;
            }
        .fileUpload label {
            display: inline-block;
            padding: 10px 20px;
            border: #999;
            color: #999;
            vertical-align: middle;
            /* background-color: #fdfdfd; */
            cursor: pointer;
            border-radius: 5px;
            background-color: #ebebeb;
            }

            /* named upload */
        .fileUpload .uploadCertificationPic {
            display: inline-block;
            height: 35px;
            font-size:18px; 
            padding: 0 10px;
            vertical-align: middle;
            border: 1px solid #ebebeb;
            border-radius: 5px;

            }
    </style>
     <script>
         $(document).ready(function () {
                 /*  input[type="file"]에 change 이벤트를 등록해 값이 변하면 그것을 읽어와 이름을 출력해 주는 방식.
                    https://gahyun-web-diary.tistory.com/83 
                    */
                 var fileTarget = $('#file'); 
                 fileTarget.on('change', function(){ 
                 var cur=$(".fileUpload input[type='file']").val();
                 $(".uploadCertificationPic").val(cur);
             }); 
         });
     </script>
</head>
<body>
    <div class="createContainer">
        <div class="reviewContent">
            <h1>리뷰를 남겨보세요!</h1>
            <div class="clubInfoBox">
                <img src="${path}/resources/img/한강.PNG"class="createClubPic" title="자바에서 모임사진 값 받는 곳">
                <div class="clubTitle">
                    <h2 title="모임타이틀 값 받기">매일 20분씩 한강에서 뛰어요!</h4>
                        <h4>매일매일 한강에서 함께 뛴다면 ! 걱정없이 고칼로리 음식도 먹을 수 있답니다! </h5>
                </div>
            </div>
            <div class="starContainer"> <!--제이쿼리-->
                <p class="question">더하기의 만족 점수를 남겨주세요!</p>
                <form action="#">
                    <span class="starReview on" name="1">1</span>
                    <span class="starReview" name="2">2</span>
                    <span class="starReview" name="3">3</span>
                    <span class="starReview" name="4">4</span>
                    <span class="starReview" name="5">5</span>
                </form>
            </div>
            <div>
                <form action="#" method="post" enctype="multipart/form-data">
                    <p class="question">어떤 점이 좋으셨나요?</p>
                    <textarea name="" cols="100" rows="9" style="resize: none; font-size: 20px;"
                        placeholder=" 100자 이내로 작성해주세요." maxlength="100"></textarea><br>           
                        <div class="fileUpload"> 
                            <label for="file">업로드</label> 
                            <input type="file" id="file"  name="profilePic">
                            <input class="uploadCertificationPic" value="파일선택">
                        </div>
                    <input type="submit" id="addBtn" value="등록하기">
                </form>
            </div> 
        </div> <!--reviewContent end-->
    </div>
</body>
</html>

