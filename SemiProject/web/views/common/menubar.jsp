<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <title>Delivery Management System</title>

    <!-- Bootstrap CSS -->
    <link rel="icon" href="../../favicon.ico">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link href="carousel.css" rel="stylesheet">
    <!-- Bootstrap Javascript -->
    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script>

    <script src="assets/js/ie-emulation-modes-warning.js"></script>

    <!-- Custom styles for this template -->
    <style>
      header{
        width: 100%;
        font-family: 'Noto Sans KR', sans-serif;
        color: black;
      }

      .menu {
        background:rgb(113, 177, 197);
      }

      .nav {
        list-style-type: none;  
        margin-left: 33%;
        margin-right:33%;
        padding: 0;
        height: auto;
        padding-top: 55px;
      }

      .nav li {
        padding: 0 10px 4px;
        line-height: 40px;
        display: inline-block;
      }

      .nav > li > a {
        display: block;
        font-weight: 600;
        font-size: 14px;
        color: black;
        text-decoration: none;
      }

      .nav > li:hover > a{
        background: none;
        color: white;
      }

      .nav li > ul {
        display: none;      
      }

      .nav li:hover > ul {
        width: 500px;
        position: absolute;
        opacity: 1;
        display: block;
        margin: 5px 0 0 0;
        height: 45px;
        text-align: center;
        background: #ADD4D9;
        right: -5px;
      }
    
      .nav li:hover > ul li {
        float: left;
        border:  rgb(113, 177, 197);
        margin: 0;
        padding: 0;
        display: inline;
      }

      .nav li:hover > ul > li > a{
        float: left;
        color: black;
        padding: 0 10px 0 0;
        margin: 0;
        line-height: 45px;
        display: block;
        width: 90px;
      }

      .login_register{
        list-style-type: none;
        padding: 0;
        margin: 0;
        position: absolute;
        top: 1%;
        right: 5%;
      }

      .login_register li{
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

    </style>
  </head>
  <body>
    <header>
      <div class="container2">
        <div class="logo">
          <a class="navbar-brand" href="#" style='width:160px !important; height: 120px !important; padding:0px;'><img src="images/semi.png"></img></a>
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
        
          <ul class="login_register" >
            <li><a href="order.php">로그인</a></li>
            <li><a href="order_check.php">회원가입</a></li>
          </ul>
        </div>
      </div>
    </header>
      

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assetsjs/ie10-viewport-bug-workaround.js"></script>
    <!-- <script src="vendor/holder.js"></script> -->
  </body>
</html>