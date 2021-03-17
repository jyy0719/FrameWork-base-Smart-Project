<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!--${pageContext.request.contextPath}" 이게 web-app을 가리킨다!!!!!   -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>



<!DOCTYPE html>
<html lang="en">

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/heart.css">
  <style>
    .heartContainer {
      margin: 0;
      width: 1140px;
    }

    #heartTitle{
      margin: 4% 6%;
    }
    .heartTab {
      padding: 10px;
      background: #ffffff;
    }

    .heartTab section {
      display: none;
      padding: 20px 0 0;
      border-top: 1px solid #8299d82f;
    }

    input[class="tabs"] {
      display: none;
    }

    label[class="tabs"] {
      display: inline-block;
      padding: 15px 25px;
      margin-left: 3%;
      font-weight: 600;
      color: #007bff;
      border: 1px solid transparent;
      font-size: 20px;
    }

    label:hover {
      color: #2C2C96;
      cursor: pointer;
    }


    .heartTab .tabs input:checked+label {
      color: #555;
      border: 1px solid #ddd;
      border-top: 2px solid #2e9cdf;
      /* border-bottom: 3px solid red; */
    }

    .heartTab #tab1:checked~#heartContent1,
    .heartTab #tab2:checked~#heartContent2 {
      display: block;
    }

    div {
      display: block;
    }

    #totalDiv {
      width: 80%;
      margin-left: 79%;
    }

    #cardPadding {
      display: inline-block;
      padding: 2% 5% 5% 5%;
      
    }
    .card-body h4 {
      font-weight: bold;
    }

    .inputB {
      width: 20px;
      height: 20px;
    }
  </style>
</head>

<body>
    <div class="heartContainer">
    <h1 id="heartTitle">나의 찜목록</h1>
    <div class="heartTab" style="text-align:left">
      <input class="tabs" id="tab1" type="radio" name="tabs" checked>
      <label for="tab1" class="tabs">신청 가능한 더하기</label>
      <input class="tabs" id="tab2" type="radio" name="tabs">
      <label for="tab2" class="tabs">결제 가능한 더하기</label>

      <section id="heartContent1" style="margin-bottom:20px;">
        <div id="totalDiv">
          <input type="checkbox" class="inputB" id="totalBtn" name="" checked>
          <label for="totalBtn">전체선택</label>
        </div>

        <div id="fBoxes">

          <div id="cardPadding">
            <input type="checkbox" class="inputB" id="card1" name="clubBox"><br>
            <label for="card1">
              <div class="card" style="width:400px">
                <img class="card-img-top" src="${path}/resources/img/하이킹.PNG" alt="Card image" style="width:100%">
                <div class="card-body">
                  <h4 class="card-title">가볍게 hiking 어때요?</h4>
                  <p class="card-text">요즘 등산하기 좋은 날씨죠! 좋은 날 함께해요.</p>
                  <a href="#" class="btn btn-primary">확인하기</a>
                </div>
              </div>
            </label>
            </input>
          </div>

          <div id="cardPadding">
            <input type="checkbox" class="inputB" id="card2" name="clubBox"><br>
            <label for="card2">
              <div class="card" style="width:400px">
                <img class="card-img-top" src="${path}/resources/img/다이어트.PNG"alt="Card image" style="width:100%">
                <div class="card-body">
                  <h4 class="card-title"> Do javascript! </h4>
                  <p class="card-text">javascript 포기자 오세요. 다시 한번 해봐요!</p>
                  <a href="#" class="btn btn-primary">확인하기</a>
                </div>
              </div>
            </label>
            </input>
          </div>

          <div id="cardPadding">
            <input type="checkbox" class="inputB" id="card3" name="clubBox"><br>
            <label for="card3">
              <div class="card" style="width:400px">
                <img class="card-img-top" src="${path}/resources/img/점핑.PNG" alt="Card image" style="width:100%">
                <div class="card-body">
                  <h4 class="card-title"> Do javascript! </h4>
                  <p class="card-text">javascript 포기자 오세요. 다시 한번 해봐요!</p>
                  <a href="#" class="btn btn-primary">확인하기</a>
                </div>
              </div>
            </label>
            </input>
          </div>
          <div id="cardPadding">
            <input type="checkbox" class="inputB" id="card4" name="clubBox"><br>
            <label for="card4">
              <div class="card" style="width:400px">
                <img class="card-img-top" src="${path}/resources/img/다이어트.PNG" alt="Card image" style="width:100%">
                <div class="card-body">
                  <h4 class="card-title"> Do javascript! </h4>
                  <p class="card-text">javascript 포기자 오세요. 다시 한번 해봐요!</p>
                  <a href="#" class="btn btn-primary">확인하기</a>
                </div>
              </div>
            </label>
            </input>
          </div>
          <div id="cardPadding">
            <input type="checkbox" class="inputB" id="card5" name="clubBox"><br>
            <label for="card5">
              <div class="card" style="width:400px">
                <img class="card-img-top" src="${path}/resources/img/한강.PNG"  alt="Card image" style="width:100%">
                <div class="card-body">
                  <h4 class="card-title"> Do javascript! </h4>
                  <p class="card-text">javascript 포기자 오세요. 다시 한번 해봐요!</p>
                  <a href="#" class="btn btn-primary">확인하기</a>
                </div>
              </div>
            </label>
            </input>
          </div>
        </div>
        <!--fBoxes end-->
      </section>
      <section id="heartContent2" style="margin-bottom:20px;">
        <div id="totalDiv">
          <input type="checkbox" class="inputB" id="totalBtn2" name="" checked>
          <label for="totalBtn2">전체선택</label>
        </div>

        <div id="fBoxes">
          <div id="cardPadding">
            <input type="checkbox" class="inputB" id="card6" name="clubBox"><br>
            <label for="card6">
              <div class="card" style="width:400px">
                <img class="card-img-top" src="${path}/resources/img/하이킹.PNG"  alt="Card image" style="width:100%">
                <div class="card-body">
                  <h4 class="card-title">가볍게 hiking 어때요?</h4>
                  <p class="card-text">요즘 등산하기 좋은 날씨죠! 좋은 날 함께해요.</p>
                  <a href="#" class="btn btn-primary">확인하기</a>
                </div>
              </div>
            </label>
            </input>
          </div> 
        </div>

      </section>
    </div>
  </div>
  <script src="js/jquery-1.12.4.min.js"></script>
  <script>

    var $totalBtn = $('#heartContent1 #totalBtn');
    $totalBtn.attr('checked', false);
    $totalBtn.change(function () {
      var $this = $(this);
      var checked = $this.prop('checked'); // checked 문자열 참조(true, false)
      $('#heartContent1 input[name="clubBox"]').prop('checked', checked);
    });

    var $totalBtn2 = $('#heartContent2 #totalBtn2');
    $totalBtn2.attr('checked', false);
    $totalBtn2.change(function () {
      var $this = $(this);
      var checked = $this.prop('checked'); // checked 문자열 참조(true, false)
      $('#heartContent2 input[name="clubBox"]').prop('checked', checked);
    });


  </script>
 
</body>

</html>