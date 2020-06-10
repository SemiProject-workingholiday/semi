<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Delivery Management System</title>

  <!-- Bootstrap CSS -->
  <link rel="icon" href="../../favicon.ico">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link href="../carousel/carousel.css" rel="stylesheet">
  <!-- Bootstrap Javascript -->
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <!-- <script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script> -->

  <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

  <!-- Custom styles for this template -->


  <style>
  

    #nation {
      border: 0.5px solid rgb(176, 171, 171);
      border-top-left-radius: 0.5em;
      border-top-right-radius: 0.5em;
      border-bottom-left-radius: 0.5em;
      border-bottom-right-radius: 0.5em;
      padding-left: 0;
      width: 480px;
      height: 50px;
      margin-bottom: 10px;

    }

    #nation>li {
      /* border:0.5px solid black; */
      /* display: inline-block; */
      float: left;
      width: 16.6667%;
      padding: 15px;
      padding-left: 0;
      padding-right: 0;
      margin-left: 0;
      margin-right: 0;
      border-top-left-radius: 0.5em;
      border-top-right-radius: 0.5em;
      border-bottom-left-radius: 0.5em;
      border-bottom-right-radius: 0.5em;
    }

    #nation>li:hover {
      background: rgb(165, 165, 165);
    }

    #zxc>ul>li :hover {
      border-bottom-left-radius: 0.5em !important;
      border-bottom-right-radius: 0.5em !important;
      border-top-left-radius: 0.5em !important;
      border-top-right-radius: 0.5em !important;
      transition: 0s;
    }

    .nav>li>a {
      color: black;
    }

    /* .container {
      padding: 5px;
    } */

    .menu {
      background: rgb(113, 177, 197);
    }

    .area {
      /* background: lightgray; */
      /* border: 1px solid black; */
      /* height: auto; */
      display: inline-block;
      /* width: 30%; */
      text-align: left;
    }

    .infor>li>a {
      color: black;

    }

    .z1 {
      z-index: 1000;

    }

    .z2 {
      z-index: 100;

    }

    .nav {
      list-style-type: none;
      margin: 0;
      padding: 0;
      text-align: center;
      height: auto;
      padding-top: 55px;
    }

    .nav li {
      padding: 0 10px 4px;
      line-height: 40px;
      display: inline-block;
    }

    .nav>li>a {
      display: block;
      font-weight: 600;
      font-size: 14px;
      color: black;
      text-decoration: none;
    }



    .nav>li:hover>a {
      background: none;
      color: white;
    }

    .nav li>ul {
      display: none;
    }

    .nav li:hover>ul {
      width: 500px;
      position: absolute;
      opacity: 1;
      display: block;
      margin: 5px 0 0 0;
      height: 45px;
      text-align: center;
      background: #ADD4D9;
      right: -5px;
      z-index: 1000;
    }

    .nav li:hover>ul li {
      float: left;
      border: rgb(113, 177, 197);
      margin: 0;
      padding: 0;
      display: inline;
    }

    .nav li:hover>ul>li>a {
      float: left;
      color: black;
      padding: 0 10px 0 0;
      margin: 0;
      line-height: 45px;
      display: block;
      width: 90px;
    }

    .login_register {
      list-style-type: none;
      padding: 0;
      margin: 0;
      position: absolute;
      top: 1%;
      right: 5%;
    }

    .login_register li {
      float: left;
      position: relative;
      padding: 0;
      line-height: 40px;
      padding: 0 10px;
    }

    .login_register li a {
      display: block;
      font-weight: 600;
      font-size: 14px;
      color: black;
      text-decoration: none;
    }

    .login_register>li:hover>a {
      background: none;
      color: white;
    }




    #nara {
      background: rgb(143, 199, 207) !important;
    }

    .depth2_menu>li {
      list-style-type: none;
      padding-top: 20px;
      font-weight: 700;
      font-size: 15px;
    }
    .depth2_menu a{
    color: gray !important;
   }
    #home td{
      font-size: 20px;
      border: 1px solid black;
    }
    .mainChoice{
      text-align: center;
      background: lightgray;
      width: 200px;
      height: 40px;
    }
    .content{
      padding-left:5px;
      width:500px;
    }
  </style>

</head>
<!-- NAVBAR
================================================== -->

<body>

  <header>
    <div class="container2 z1" style="position: relative;">
      <div class="logo">
        <a class="navbar-brand" href="#" style='width:160px !important; height: 120px !important; padding:0px;'><img
            src="semi.png"
            style='width:160px !important; height: 120px !important; margin-top:0px !important; margin-left: 0px !important; '></img></a>
      </div>
      <div class="menu">
        <ul class="nav">
          <li class="active"><a href="#">소개</a></li>
          <li><a href="order.php">안전정보</a></li>
          <li><a href="order_check.php">집 예약</a></li>
          <li><a href="order_change.html">구직 정보</a></li>
          <li><a href="order_change.html">커뮤니티</a>
            <ul id="nara">
              <li><a href="http://www.naver.com">뉴질랜드</a></li>
              <li><a href="http://www.naver.com">독일</a></li>
              <li><a href="http://www.naver.com">일본</a></li>
              <li><a href="http://www.naver.com">캐나다</a></li>
              <li><a href="http://www.naver.com">호주</a></li>
            </ul>
          </li>
        </ul>

        <ul class="login_register">
          <li><a href="2.2PIU.html">마이페이지</a></li>
          <li><a href="1.mainpage.html">로그아웃</a></li>
        </ul>
      </div>
    </div>
  </header>



    <div class="area" id="wrap" align="left"
      style="width:160px; height: 800px; margin: 0; padding: 0; border-right: 1px solid lightgray; ">

      <nav class="side_menu">

        <ul class="depth2_menu" style="margin-top: 80%;">
          <li class="depth2_list"><a class="depth2_anchor"
              href="2.2PIU.html"
              target="_self">개인정보수정</a>

          </li>
          <li class="depth2_list actived"><a class="depth2_anchor" href="3.WHome.html"
              target="_self">집 예약 내역</a>
          </li>
          <li class="depth2_list"><a class="depth2_anchor" href="4WW.html" target="_self">구직 신청
              내역</a>


          </li>
          <li class="depth2_list"><a class="depth2_anchor" href="5.WLetter.html" target="_self">내가 쓴 글</a>


          </li>
          <li class="depth2_list"><a class="depth2_anchor" href="6.JJIM.html" target="_self">찜 목록</a>


          </li>

        </ul>

      </nav>
    </div>
    

    <div id="wrap" class="area" style="position:absolute; margin-left: 5%;"; align="center">
   
        <h1 style="font-weight: 900;">집 예약 내역</h1>
   
      <form style="margin-top: 100px; margin-left: 280px;  " >

        <table align="center" id="home">
          <tr>
            <td class="mainChoice">건물 이름</td>
            <td class="content">트리하우스</td>
          </tr>
          <tr>
            <td class="mainChoice">집 종류</td>
            <td class="content">원룸/아파트</td>
          </tr>
          <tr>
            <td class="mainChoice">입주 기간</td>
            <td class="content">2020년 05월 18일 ~ 2020년 12월 18일</td>
          </tr>
          <tr>
            <td class="mainChoice">월세</td>
            <td class="content">￦199,883</td>
          </tr>
          <tr>
            <td class="mainChoice">건물주 이름</td>
            <td class="content">김성훈</td>
          </tr>
          <tr>
            <td class="mainChoice">건물주 전화번호</td>
            <td class="content">010-5170-4587</td>
          </tr>
          <tr>
            <td class="mainChoice">건물 주소</td>
            <td class="content">서울특별시 강남구 테헤란로 14길 6 남도빌딩 2F</td>
          </tr>
          <tr>
            <td class="mainChoice">편의 시설</td>
            <td class="content">TV, 무선인터넷, 난방, 에어컨</td>
          </tr>
          <tr>
            <td class="mainChoice">공용 공간</td>
            <td class="content">거실, 주방, 화장실</td>
          </tr>
          <tr>
            <td class="mainChoice">애완동물</td>
            <td class="content">있음</td>
          </tr>
        </table>
      </form>
      <br><br>
      
      <button id="homeless" style="width:150px; height:35px; margin-left: 83%;" >예약 취소</button>
    </div>

    <script>
      $(function() {
        $("#homeless").click(function(){ 
        var result = confirm("예약을 취소 하시겠습니까?");
          if(result){
            location.assign("11.NOHome.html");
          }else{
           location.reload();
          }
      })
    })



    </script>



  <!-- Marketing messaging and featurettes
    ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->




  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="../../assets/js/docs.min.js"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="../../assetsjs/ie10-viewport-bug-workaround.js"></script>
  <!-- <script src="vendor/holder.js"></script> -->

</body>

</html>