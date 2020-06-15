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
    header {
      width: 100%;
      font-family: 'Noto Sans KR', sans-serif;
      color: black;
    }

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

    .depth2_menu a {
      color: gray !important;
    }

    #home td {
      font-size: 20px;
      border: 1px solid black;
    }

    .mainChoice {
      text-align: center;
      background: lightgray;
      width: 200px;
      height: 40px;
    }

    .table tr {
      height: 40px;
    }

    .mainChoice>th {
      text-align: center;
      font-size: 15px;
      border:1px solid black !important;
    }
    nav{
      text-align: center;
    }
    tbody >tr>td,th{
     text-align: center;
      font-size: 15px;
      padding-top:12px !important;
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
          <li><a href="7.NPIU.html">마이페이지</a></li>
          <li><a href="1.mainpage.html">로그아웃</a></li>
        </ul>
      </div>
    </div>
  </header>



  <div class="area" id="wrap" align="left"
    style="width:160px; height: 900px; margin: 0; padding: 0; border-right: 1px solid lightgray; ">

    <nav class="side_menu" style="text-align:left !important; " >

      <ul class="depth2_menu" style="margin-top: 80%;">
        <li class="depth2_list"><a class="depth2_anchor"
            href="7.NPIU.html"
            target="_self">개인정보수정</a>

        </li>
        <li class="depth2_list actived"><a class="depth2_anchor" href="8.NHome.html"
            target="_self">집 예약자 내역</a>
        </li>
        <li class="depth2_list"><a class="depth2_anchor" href="9.NW.html" target="_self">구직 신청자
            내역</a>


        </li>
        <li class="depth2_list"><a class="depth2_anchor" href="10.Nletter.html" target="_self">내가 쓴 글</a>


       

      </ul>


    </nav>
  </div>


  <div id="wrap" class=" area " style="position:absolute; margin-left: 5%;" ; align="center">

    <h1 style="font-weight: 900;">구직 신청자 내역</h1>

    <form style="margin-top: 100px; margin-left: 50px;  " >

      <table class="table table-hover table-bordered">
        <thead>
          <tr class="mainChoice" style="background: lightgray;">
            <th scope="col" style="width: 300px;">글 제목</th>
            <th scope="col" style="width: 100px;">구직자 명</th>
            <th scope="col" style="width: 300px;">근무 기간</th>
            <th scope="col" style="width: 200px;">구직자 전화번호</th>
            <th scope="col" style="width: 200px;">구직자 이메일</th>

          </tr>
        </thead>
        <tbody>
          <tr>

            <td>시드니 야생캥거루 밥주기</td>
            <td>홍길동</td>
            <td>2020/01/01 ~ 2021/01/01</td>
            <td>010-4144-4232</td>
            <td>dfdfd1132@naver.com</td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>


          </tr>

        </tbody>
      </table>
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&lsaquo;</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&rsaquo;</span>
            </a>
          </li>
        </ul>
      </nav>
    </form>


  </div>





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