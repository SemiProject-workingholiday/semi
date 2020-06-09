<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    #nation {
      border: 0.5px solid rgb(176, 171, 171);
      border-top-left-radius: 0.5em;
      border-top-right-radius: 0.5em ;
      border-bottom-left-radius: 0.5em;
      border-bottom-right-radius: 0.5em ;
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

    #zxc>ul>li :hover{
        border-bottom-left-radius:0.5em !important;
        border-bottom-right-radius:0.5em !important;
        border-top-left-radius:0.5em !important;
        border-top-right-radius:0.5em !important;
        transition: 0s;
       }

    .nav>li>a {
      color: black;
    }

    .container {
      padding: 5px;
    }


    .area {
      background: lightgray;
      border: 1px solid black;
      height: auto;
      display: inline-block;
      width: 30%;
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
    
      .menu {
        background:rgb(113, 177, 197);
      }

     

     
  </style>
</head>
<body>
<%@ include file="/views/common/menubar.jsp" %>
 

  <!-- Carousel
    ================================================== -->
  <div id="myCarousel" class="carousel slide z2" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/country/Australia/OpheraHouse.jpg" alt="First slide">
        <div class="container">
          <div class="carousel-caption">
            <h1>호주</h1>
            <h1>오페라하우스</h1>
            <hr />
          </div>
        </div>
      </div>
      <div class="item">
        <img src="images/country/Japan/Sakura.jpg" alt="Second slide">
        <div class="container">
          <div class="carousel-caption">
            <h1>일본</h1>
            <h1>벚꽃 성</h1>
            <hr />
          </div>
        </div>
      </div>
      <div class="item">
        <img src="images/country/Canada/AgeAgara.jpg" alt="Third slide">
        <div class="container">
          <div class="carousel-caption">
            <h1>캐나다</h1>
            <h1>나이아가라 폭포</h1>
            <hr />
          </div>
        </div>
      </div>
      <div class="item">
        <img src="images/country/Germany/Fruit.jpg" alt="Third slide">
        <div class="container">
          <div class="carousel-caption">
            <h1>독일</h1>
            <h1>프랑크 프루트</h1>
            <hr />
          </div>
        </div>
      </div>
      
      <div class="item">
        <img src="images/country/Newzealand/gotohell.jpg" alt="Third slide">
        <div class="container">
          <div class="carousel-caption">
            <h1>뉴질랜드</h1>
            <h1>지옥에나 가라</h1>
            <hr />
          </div>
        </div>
      </div>
      
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div><!-- /.carousel -->
  <script>
    $('.carousel').carousel({ interval: 2000 });
  </script>
  <!-- 그림 아래 메뉴 바  -->
  <div class="z2">
    <div id='nationSelect' align='center' style="margin-bottom: 50px;">
      <ul id='nation' style='list-style: none;'>
        <li>전체</li>
        <li>호주</li>
        <li>뉴질랜드</li>
        <li>캐나다</li>
        <li>독일</li>
        <li>일본</li>
      </ul>
    </div>
  </div>

  <div class="container z2" align="center">
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-md-4">
        <img src="images/country/Australia/Coala.jpg" width="300px" height="300px">
        <p style="width: 300px; height: 200px;">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus
          ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
          malesuada magna mollis euismod. Donec sed odio dui. </p>
      </div>
      <div class="col-md-4">
        <img src="images/country/Australia/Coala.jpg" width="300px" height="300px">
        <p style="width: 300px; height: 200px;">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus
          ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
          malesuada magna mollis euismod. Donec sed odio dui. </p>
      </div>
      <div class="col-md-4">
        <img src="images/country/Australia/Coala.jpg" width="300px" height="300px">
        <p style="width: 300px; height: 200px;">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas
          eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor
          mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
      </div>
      <div class="col-md-4">
        <img src="images/country/Australia/Coala.jpg" width="300px" height="300px">
        <p style="width: 300px; height: 200px;">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas
          eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor
          mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
      </div>
      <div class="col-md-4">
        <img src="images/country/Australia/Coala.jpg" width="300px" height="300px">
        <p style="width: 300px; height: 200px;">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas
          eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor
          mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
      </div>
      <div class="col-md-4">
        <img src="images/country/Australia/Coala.jpg" width="300px" height="300px">
        <p style="width: 300px; height: 200px;">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas
          eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor
          mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
      </div>

    </div>

    <hr>

  </div> <!-- /container -->

  <div class="container1 z2" id="information" align="center">
    <div id="area1" class="area" style="width: 35%; margin-right: 5%;">
      <h3>공지사항<small style="margin-left: 70%;"><a href="http://www.naver.com" style="margin-left: 15%;">+더보기</a></small>
      </h3>
      <ul class="infor">
        <li><a href="http://www.naver.com">ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</a></li>
        <li><a href="http://www.naver.com">ㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲ</a></li>
        <li><a href="http://www.naver.com">ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ</a></li>
        <li><a href="http://www.naver.com">ㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃ</a></li>
        <li><a href="http://www.naver.com">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</a></li>
        <li><a href="http://www.naver.com">ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</a></li>
        <li><a href="http://www.naver.com">ㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲ</a></li>
        <li><a href="http://www.naver.com">ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ</a></li>
        <li><a href="http://www.naver.com">ㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃ</a></li>
        <li><a href="http://www.naver.com">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</a></li>
      </ul>
    </div>
    <div id="area1" class="area z2" style="width: 35%; ">
      <h3>안전정보 <small style="margin-left: 70%;"><a href="http://www.naver.com"
            style="margin-left: 15%;">+더보기</a></small></h3>
      <ul class="infor">
        <li><a href="http://www.naver.com">ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</a></li>
        <li><a href="http://www.naver.com">ㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲ</a></li>
        <li><a href="http://www.naver.com">ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ</a></li>
        <li><a href="http://www.naver.com">ㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃ</a></li>
        <li><a href="http://www.naver.com">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</a></li>
        <li><a href="http://www.naver.com">ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</a></li>
        <li><a href="http://www.naver.com">ㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲㄲ</a></li>
        <li><a href="http://www.naver.com">ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ</a></li>
        <li><a href="http://www.naver.com">ㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃㅃ</a></li>
        <li><a href="http://www.naver.com">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</a></li>
      </ul>
    </div>
  </div>

  <!-- Marketing messaging and featurettes
    ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <!-- <div class="container marketing"> -->

  <!-- Three columns of text below the carousel -->


  <hr class="featurette-divider">

  <!-- /END THE FEATURETTES -->


  <!-- FOOTER -->
  <footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 Delivery Management System &middot; <a href="#">Privacy</a></p>
  </footer>

  </div><!-- /.container -->


  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="assets/js/docs.min.js"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="assetsjs/ie10-viewport-bug-workaround.js"></script>
  <!-- <script src="vendor/holder.js"></script> -->

</body>
</html>