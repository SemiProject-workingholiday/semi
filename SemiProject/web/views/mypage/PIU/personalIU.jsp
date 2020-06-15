<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
 <% 
	Member member = (Member)request.getAttribute("member");

	String userId = member.getUserId();
    String userName = member.getUserName();
    String userPwd = member.getUserPwd();

    String email = member.getEmail() != null ? member.getEmail() : "";
 %>    
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

    .col-md-6 {
      display: inline-block !important;
      border: 1px solid black;
      width: 45%;
      height: 300px;
      margin: 25px;
      background: lightblue;
      -webkit-border-radius: 15px;
    }




    .btn1 {
      background: #1AAB8A;
      color: #fff;
      border: none;
      position: relative;
      height: 60px;
      font-size: 110%;
      padding: 0 2em;
      cursor: pointer;
      transition: 800ms ease all;
      outline: none;
    }

    .btn1:hover {
      background: #fff;
      color: #1AAB8A;
    }

    .btn1:before,
    button:after {
      content: '';
      position: absolute;
      top: 0;
      right: 0;
      height: 2px;
      width: 0;
      background: #1AAB8A;
      transition: 400ms ease all;
    }

    .btn1:after {
      right: inherit;
      top: inherit;
      left: 0;
      bottom: 0;
    }

    .btn1:hover:before,
    button:hover:after {
      width: 100%;
      transition: 800ms ease all;
    }

    .password {
      display: inline-block;

    }

    #CF_Btn{
       border-radius:5px;
       background-color:rgb(202, 202, 202); 
       border: 1px solid rgb(202, 202, 202)
       ;  
       height: 52px; 
       margin-top:2px; 
       margin-left:15px;
       outline: 0; 
    }
    #email{
       float:left;
       width:360px;
    
    }   
    #userId{
       position: relative; 
       z-index: 10;
    }
    #CF_Check_Btn{
       height: 30px; 
       background-color:rgb(202, 202, 202); 
       border: 1px solid rgb(202, 202, 202); 
       margin-top:2px; 
       margin-left:5px; 
       border-radius:5px;
       outline: 0; 
    }
    #CF_Num{
       float: left;
       height: 30px; 
       width: 300px;
    }
    #certification{
       display:none; 
       border:1px solid rgb(219,219,219);
       
       padding: 15px;
       border-radius:5px;
    }
    .center_div{
        /*
            div 안에 div를 가운데 정렬 할 수 있는 방법
            넓이는 사용자가 원하는 만큼 설정
            display를 block으러 설정
            margin을 0 auto로 설정
        */
        width: 447px;
        display: block;
        margin: 0 auto;
    }
    .ero_msg{
        float: left; 
        padding-left: 5px; 
        font-size: 13px; 
        margin:0;
        color: red;
        visibility:hidden;
        /* visibility는 hidden은 공간을 차지하면서 안보이고
           unset은 보이게함
         */
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




 <div class="area side z2"
    style="width: 160px; height: 900px; margin: 0; padding: 0; border-right: 1px solid lightgray; ">

    <nav class="side_menu" style="margin-top:80%">

      <ul class="depth2_menu">
        <li class="depth2_list"><a class="depth2_anchor" href="<%=request.getContextPath() %>/views/mypage/PIU/personalIU.jsp" target="_self">개인정보수정</a>

        </li>
        <li class="depth2_list actived"><a class="depth2_anchor" href="<%=request.getContextPath() %>/views/mypage/Home/wHome.jsp" target="_self">집 예약 내역</a>
        </li>
        <li class="depth2_list"><a class="depth2_anchor" href="<%=request.getContextPath() %>/views/mypage/Work/wWork.jsp" target="_self">구직 신청
            내역</a>


        </li>
        <li class="depth2_list"><a class="depth2_anchor" href="<%=request.getContextPath() %>/views/mypage/Letter/wLetter.jsp" target="_self">내가 쓴 글</a>


        </li>
        <li class="depth2_list"><a class="depth2_anchor" href="<%=request.getContextPath() %>/views/mypage/Work/JJIM.jsp" target="_self">찜 목록</a>


        </li>

      </ul>

    </nav>
  </div>


  <div style="position: absolute;  margin-left: 5%;" id="wrap" class="area z2">
    <h1 style="font-weight: 900;">개인정보수정</h1>
    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
        style="margin-left: 5px;">
        <div class="col p-4 d-flex flex-column position-static">
          <h2 class="mb-0">이름</h2><br>
          <div class="mb-1 text-muted" style="font-size:20px;">사용자가 홈페이지에서 이용하게 될 이름입니다.<br> 개명을 하셨거나 이름을 바꾸길 원하시는 경우
            수정바랍니다.</div><br>
          <label>사용자의 현재 이름 : &nbsp;</label>
          <label style="text-align: center; background: lightgray; border: none; font-weight: 700;"><%=userName %></label>
        </div><br>
        <button class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#myModalName"
          style="width:200px; height: 50px; margin-left: 180px;" id="nameChange">이름 수정하기</button>
      </div>
    </div>

    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
        style="margin-left: 5px;">
        <div class="col p-4 d-flex flex-column position-static">
          <h2 class="mb-0">비밀번호</h2><br>
          <div class="mb-1 text-muted" style="font-size:20px;">로그인시 사용할 비밀번호 입니다.<br>보안상의 안전을 위하여 주기적인 패스워드 변경이 필요합니다.
          </div><br>
        </div><br>
        <button class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#myModalPwd"
          style="width:200px; height: 50px; margin-left: 180px;" id="passwordChange">비밀번호 변경하기</button>
      </div>
    </div>

    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
        style="margin-left: 5px;">
        <div class="col p-4 d-flex flex-column position-static">
          <h2 class="mb-0">이메일</h2><br>
          <div class="mb-1 text-muted" style="font-size:20px;">사용자가 페이지를 이용하면서 mail을 받게 될 e-mail입니다.</div><br>
          <label>사용자의 현재 e-mail : &nbsp;</label><input type="email" value="khacademy@naver.com" readonly
            style="text-align: center; background: lightgray; border: none; font-weight: 700;">
        </div><br>
        <button  class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#myModalE"
          style="width:200px; height: 50px; margin-left: 180px;" id="emailChange">이메일 변경하기</button>
      </div>
    </div>
    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
        style="margin-left: 5px;">
        <div class="col p-4 d-flex flex-column position-static">
          <h2 class="mb-0">회원탈퇴</h2><br>
          <div class="mb-1 text-muted" style="font-size:20px;">사용자의 계정을 더 이상 이용하실 수 없습니다.</div>
          <div  class="mb-1 text-muted" style="font-size:20px;">그 동안 사용하였던 데이터와 정보가 모두 사라집니다.<br>
             계정 삭제를 원하시면 아래 회원버튼을 눌러주세요</div>
        </div><br>
        <button  class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#myModalP"
          style="width:200px; height: 50px; margin-left: 180px;" id="statusN">회원탈퇴</button>
      </div>
    </div>


    <!-- <table align="right">
      <tr>
        <td><button class="btn"  data-toggle="modal" data-target="#myModalE"
      style="width:130px; height: 40px; margin-right: 50px; font-weight: 900;" id="statusN">회원 탈퇴</button></td>
      </tr>
    </table> -->
  </div>
  <div class="modal fade" id="myModalName" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style=" margin-top: 15%;">

    <div class="modal-dialog">

      <div class="modal-content" style="height: 10%; width: 70%;">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">이름 변경</h4>
        </div>

        <div class="modal-body">
          <form>
            <table>
              <tr>
                <td><label>사용할 이름을 입력해주세요.</label></td>
              </tr> 
              <tr>
                <td><label>이름 : </label>
                <input type="text" size="20px" id="userName"></td>
              </tr>
            </table>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="UpdateName">수정</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>

      </div>

    </div>

  </div>


  <div class="modal fade" id="myModalPwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style=" margin-top: 15%; margin-left: 15%;">

    <div class="modal-dialog">

      <div class="modal-content" style="height: 10%; width: 70%;">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">비밀번호 변경</h4>
        </div>

        <div class="modal-body">
          <form>
            <table>
              <tr>
                <td><label>현재 비밀번호 : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                <td><input class="password" type="password" requierd></td>
              </tr> 
              <tr>
                <td><label>변경할 비밀번호 : </label></td> 
                <td><input type="password" class="password" requierd></td>
              </tr>
              <tr>
                 <td><label>비밀번호 확인 : </label></td> 
                 <td><input type="password" class="password" requierd></td>
              </tr>
            </table>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary">수정</button>
          <button style="margin-right: 35%;" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>

      </div>

    </div>

  </div>

  <div class="modal fade" id="myModalP" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style=" margin-top: 15%; margin-left: 15%;">

    <div class="modal-dialog">

      <div class="modal-content" style="height: 10%; width: 70%;">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">계정 삭제</h4>
        </div>

        <div class="modal-body">
          <form>
            <table>
              <tr>
                <td><label>사용중인 비밀번호를 입력해주세요</label></td>
              </tr>
              <tr>
                  <td>
                  <input type="password" class="password" required></td>
              </tr>
            </table>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary">수정</button>
          <button style="margin-right: 35%;" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>

      </div>

    </div>

  </div>

  <div class="modal fade" id="myModalE" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style=" margin-top: 15%; margin-left: 15%;">

    <div class="modal-dialog">

      <div class="modal-content" style="height: 10%; width: 70%;">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">이메일 변경</h4>
        </div>

        <div class="modal-body">
          <form>
            <table>
              <tr>  
                  <td><label>변경할 이메일을 입력하세요 </label></td>
                  
              </tr>
              <tr>
                <td>
                     <div style="height:10px;"></div>
                  <input type="email" name="email" id="email" class="log"  placeholder=" 이메일을 입력해주세요." required>    
                  <button type="button" style="outline: 0; margin-left: 5px;" id="CF_Btn">인증번호</button><br>
                  <div style="height:8px;"></div>
                  <p class="ero_msg" id="msg_em">
                  <div style="height:11px;"></div>
                  <div id="certification" style="">
                  <input type="text" name="CF_Num"  class="log" id="CF_Num" placeholder="인증번호를 입력해주세요">
                  <button type="button" id="CF_Check_Btn">인증번호 확인</button></td>
              </tr>
            </table>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary">수정</button>
          <button style="margin-right: 35%;" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>

      </div>

    </div>

  </div>
  <script>
  function pwdCheck(){
	  var userPwd = $("#status input[name='currentP']");
	  
	  $.ajax({
			url:"<%=request.getContextPath()%>/pwdCheck.me",
			type:"post",
			data:{userPwd:userPwd.val()},
			success:function(data){
				if(data=="permit"){
					alert("일치하지 않습니다.");
				}else{
					alert("확인되었습니다.");
				}
				
				
			},
			error:function(request,status,error){
                 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
             }
	  
	  
	  
	  })
  }
  	$(function(){
  		$("#deleteMember").click(function(){
  			$("#myModalName #myModalPwd #myModalE #myModalP").attr("action","<%=request.getContextPath()%>/delete.me");
  			alert("탈퇴되었습니다.");	
  		})
  		
  	})
 	

 	$(function(){
 		$("#UpdateName").click(function(){
 			 $("#userName").change(function(){
 	            var NregExp=/^[가-힣]{2,6}$/;
 	            
 	            if(!NregExp.test($(this.val()))){
 	               alert("이름을 정확히 입력해 주세요");
 	            }else{
 	            	
 			var userName = $("#joinForm input[name='userName']");
			
			
			$.ajax({
				url:"<%=request.getContextPath()%>/update.me",
				type:"post",
				data:{userName:userName.val()},
				success:function(data){
					$uName = $("#uName");
					$uName.html("");
					
					var $label = $("<label>").text(data[key].userName);
					
					
					$uName.append($label);
					
					
				},
				error:function(request,status,error){
	                   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	               }
			});
 		})
 	            }
 	            
 	         })
 		
 		
 	})
 			
 	$(function(){
 		$("#UpdatePwd").click(function(){
 			var userPwd = $("#joinForm input[name='Pwd2']");
			
			
			$.ajax({
				url:"<%=request.getContextPath()%>/update.me",
				type:"post",
				data:{userPwd:userPwd.val()},
				success:function(data){
				
				},
				error:function(request,status,error){
	                   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	               }
			});
 		})
 		
 		
 	})
 	
 	
 	$(function(){
 		$("#UpdateEmail").click(function(){
 			var email = $("#joinForm input[name='email']");
			
			
			$.ajax({
				url:"<%=request.getContextPath()%>/update.me",
				type:"post",
				data:{email:email.val()},
				success:function(data){
					$uEmail = $("#uEmail");
					$uEmail.html("");
					
					var $label = $("<label>").text(data[key].email);
					
					
					$uEmail.append($label);
					
				},
				error:function(request,status,error){
	                   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	               }
			});
 		})
 		
 		
 	})
	$(function(){
       
       var emailsend;
       

        /* 아이디 정규 표현식 밎 중복 검사 */        
        $("#userId").change(function(){
           var IregExp=/^[a-z0-9]{4,10}$/;
           if(!IregExp.test($(this).val())){
              $("#check_img_id").attr("src","<%=request.getContextPath()%>/images/checkRed.png");           
              $("#ero_msg_id").html("※4~20자의 영문 소문자, 숫자만 가능합니다").css("color","red");
              
           }else{
              $.ajax({
                 url:"<%=request.getContextPath()%>/idcheck.me",
                 type:"post",
                 data: {userId:$(this).val()},
                 success:function(data){
                    if(data == "N"){
                       $("#check_img_id").attr("src","<%=request.getContextPath()%>/images/checkGreen.png");
                       $("#ero_msg_id").html("사용 가능한 아이디 입니다.").css("color","green");
                    }
                    else{
                       $("#check_img_id").attr("src","<%=request.getContextPath()%>/images/checkRed.png");           
                         $("#ero_msg_id").html("※4~20자의 영문 소문자, 숫자만 가능합니다").css("color","red");
                    }
                 },
                 error:function(request,status,error){
                       alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                     }
                 
              })
              
              
              
           }
        }).focus(function(){
           if($("#userId").val().trim().length == 0){
              $("#ero_msg_id").css("visibility","unset");
              
           }
        })
        
        /* 비밀번호 정규 표현식 밎 비밀번호 확인 */
        $("#userPw").change(function(){
           var PregExp=/^[a-z0-9]{4,20}$/;
           
           if(!PregExp.test($(this).val())){              
              $("#ero_msg_pw").html("※4~20자의 영문 소문자, 숫자만 가능합니다").css("color","red");
              
           }else{              
              $("#ero_msg_pw").html("사용 가능한 비밀번호 입니다.").css("color","green");
              
           }
           
        }).focus(function(){
           if($("#userPw").val().trim().length == 0){
              $("#ero_msg_pw").css("visibility","unset");
              
           }
        })
        $("#userPw2").change(function(){
           if($("#userPw").val() == $("#userPw2").val()){
              $("#ero_msg_pw").css("visibility","hidden")
              $("#check_img_pw").attr("src","<%=request.getContextPath()%>/images/checkGreen.png");
              
           }else{
              $("#check_img_id").attr("src","<%=request.getContextPath()%>/images/checkRed.png");
              
           }
        })

        
        /* 이메일 정규 표현식 밎 이메일 인증 */
         $("#CF_Btn").click(function(){
           var email = $("#email");
           var EregExp=/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
     
           if(email.val().trim().length==0){
              alert("이메일을 입력해 주세요");
              email.focus();
           }else if(!EregExp.test(email.val())){
              alert("맞지않습니다.");
              
           }else{
              alert(email.val()+"으로 인증번호를 발송하였습니다.");
              $("#certification").css("display","block");
              
              $.ajax({
                 url:"<%=request.getContextPath()%>/insertemail.me" ,
                 type:"post",
                 data:{email:email.val()},
                 success:function(data){
                    alert(data);
                    emailsend = data;
                 },
                 error:function(request,status,error){
                       alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                     }
                 
              })
              
              
           }
         })
         $("#CF_Check_Btn").click(function(){
               
            if($("#CF_Num").val() == emailsend){
               alert("인증이 완료되었습니다.")
              $("#msg_em").html("인증 성공").css({"color":"green","visibility":"unset"});
              $("#certification").css("display","none");
              $("#email").attr("readonly",true);
              $("#CF_Btn").attr("disabled","disabled")
            }
         })
         
         $("#userType").mouseover(function(){
             $("#typeEx").css("visibility","unset");
         })
         $("#userType").mouseout(function(){
            $("#typeEx").css("visibility","hidden");
         })
         
         /* 이름 정규 표현식 */         
         $("#userName").change(function(){
            var NregExp=/^[가-힣]{2,6}$/;
            
            if(!NregExp.test($(this.val()))){
               alert("이름을 정확히 입력해 주세요");
            }
            
         })
         
    })
    

       

  </script>


  <!-- Marketing messaging and featurettes ================================================= -->
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