<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 글 작성하기</title>
    <style>
        .createCommContainer{
            margin: 0;
            width: 1140px;
            /* padding: 5%; */
            background-color: #eee;
        }

        #inlineCommunityContent{
            width: 85%;
            margin: auto;
            padding: 3% 0 5% 0;
        
        }

        #communityContentBox{
            border: 1px solid rgba(0, 0, 0, 0.171);
            padding-bottom: 5%;
            border-radius: 5px;
            
        }

        /*작성자 인포메이션*/
        #writerInfo{
            display: flex;
            margin: 3% 0 0 4%;
            /* background-color: aquamarine; */
            margin-bottom: 3%;
           
        }

        #writer1{
            font-size: 24px;
            font-weight: bold;
            /* padding-right: 3%; */
        }
        #writer2{
            font-size: 22px;
            font-weight:600;

        }
        #boardTitle{
            padding: 5px;
            margin-bottom: 2%;
            border-style: none;
            font-size: 16px;
        }
        #communityContent{
            padding-left: 4%;
        }

        #communityContent textarea {
            border-style: none;
        }

        /*파일 버튼 css
            input[type="file"]을 숨기고, label을 이용해 버튼을 만든다.
            그다음 input을 하나 더 만들어서 파일경로를 출력해 선택한 파일의 경로를 보여준다. 
        */
         .fileUpload{
                margin-top: 2%;
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
	         color: #999;
	         vertical-align: middle;
	         background-color: #fdfdfd;
	         cursor: pointer;
	         border-radius: 5px;
         }

         /* named upload */
         .fileUpload .uploadCertificationPic {
	         display: inline-block;
	         height: 35px;
	         font-size:18px; 
	         padding: 0 10px;
	         vertical-align: middle;
	         background-color: #f5f5f5;
	         border: 1px solid #ebebeb;
	         border-radius: 5px;

         }

        #submitBtn input{
            display: inline-block;
            padding: 10px 20px;
            color: #999;
            /* vertical-align: middle; */
            background-color: #fdfdfd;
            border: 0;
            cursor: pointer;
            border-radius: 5px;
            float: right;
        }

        #submitBtn{
            width: 71%;
        }


    </style>
    <script src="${path}/resources/js/jquery-1.12.4.js"></script>
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
    <div class="createCommContainer">
        <div id="inlineCommunityContent">
            <h1>커뮤니티 게시판</h1>
            <div id="communityContentBox">
                <div id="writerInfo">
                    <table>
                        <tr><th id="writer1">작성자</th><th id="writer2"></th></tr>
                    </table>
                    <!-- <p id="writer1">작성자</p><p ></p> -->
                </div>

                <div id="communityContent">
                    <form action="#" method="post" enctype="multipart/form-data">
                        <div><input name="" id="boardTitle" maxlength="20" placeholder="제목을 입력해주세요."></div>
                        <textarea name="" cols="80" rows="11" style="resize: none; font-size: 16px;"
                            placeholder=" 500자 이내로 작성해주세요." maxlength="500"></textarea><br>

                            <div class="fileUpload"> 
                                <label for="file">업로드</label> 
                                <input type="file" id="file"> 
                                
                                <input class="uploadCertificationPic" value="파일선택">
                            </div>
                        <!-- <input type="file" name="profilePic" value="파일첨부"><br> -->
                        <div id="submitBtn"> <input type="submit" value="등록하기"></div>
                    </form>
                </div> 
            </div>
        </div>    
    </div>
    
 
</body>
</html>