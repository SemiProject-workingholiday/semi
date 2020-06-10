<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="mypage.model.vo.Member"%>
<% 
	Member member = (Member)request.getAttribute("member");

	String userId = member.getUserId();
    String userName = member.getUserName();
    String userPwd = member.getUserPwd();
    String phone = member.getPhone() != null ? member.getPhone() : "";
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



    
  </style>

</head>
<!-- NAVBAR
================================================== -->

<body>

 <%@ include file="/views/common/menubar.jsp" %>



<div style="position:static;">
  <div class="area side z2"
    style="width: 160px; height: 900px; margin: 0; padding: 0; border-right: 1px solid lightgray; ">

    <nav class="side_menu" style="margin-top:80%">

      <ul class="depth2_menu">
        <li class="depth2_list"><a class="depth2_anchor" href="2.2PIU.html" target="_self">개인정보수정</a>

        </li>
        <li class="depth2_list actived"><a class="depth2_anchor" href="3.WHome.html" target="_self">집 예약 내역</a>
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
<!-------------------------------------------------개인정보수정 div-------------------------------------------------------------------  -->

  <div style="position: absolute;  margin-left: 5%;"  class="area z2" >
    <h1 style="font-weight: 900;">개인정보수정</h1>
    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
        style="margin-left: 5px;">
        <div class="col p-4 d-flex flex-column position-static">
          <h2 class="mb-0">이름</h2><br>
          <div class="mb-1 text-muted" style="font-size:20px;">사용자가 홈페이지에서 이용하게 될 이름입니다.<br> 개명을 하셨거나 이름을 바꾸길 원하시는 경우
            수정바랍니다.</div><br>
          <label>사용자의 현재 이름 : &nbsp;</label><label id="uName" style="text-align: center; background: lightgray; border: none; font-weight: 700;">ddfdf</label>
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
          <h2 class="mb-0">연락처</h2><br>
          <div class="mb-1 text-muted" style="font-size:20px;">사용자가 페이지를 이용하면서 연락을 받게 될 연락처입니다.</div><br>
          <label>사용자의 현재 연락처 : &nbsp;</label>
          <label id="uPhone" style="text-align: center; background: lightgray; border: none; font-weight: 700;"></label>
        </div><br>
        <button  class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#myModalP"
          style="width:200px; height: 50px; margin-left: 180px;" id="phoneChange">연락처 변경하기</button>
      </div>
    </div>

    <div class="col-md-6">
      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"
        style="margin-left: 5px;">
        <div class="col p-4 d-flex flex-column position-static">
          <h2 class="mb-0">이메일</h2><br>
          <div class="mb-1 text-muted" style="font-size:20px;">사용자가 페이지를 이용하면서 mail을 받게 될 e-mail입니다.</div><br>
          <label>사용자의 현재 e-mail : &nbsp;</label>
          <label id="uEmail" style="text-align: center; background: lightgray; border: none; font-weight: 700;"></label>
        </div><br>
        <button  class="btn1 btn-primary btn-lg" data-toggle="modal" data-target="#myModalE"
          style="width:200px; height: 50px; margin-left: 180px;" id="emailChange">이메일 변경하기</button>
      </div>
    </div>

    <table align="right">
      <tr>
        <td><button class="btn btn-primary btn-lg"  data-toggle="modal" data-target="#status"
      style="width:130px; height: 40px; margin-right: 50px; font-weight: 900;" id="statusN">회원 탈퇴</button></td>
      </tr>
    </table>
  </div>
  
  <!-- -----------------------------------각각의 모달-------------------------------  -->
  
  <div class="modal fade" id="myModalName" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style=" margin-top: 15%;" action="<%=request.getContextPath()%>/update.me" method="post">

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
                <input type="text" size="20px" name="userName"></td>
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
    style=" margin-top: 15%; margin-left: 15%;" action="<%=request.getContextPath()%>/update.me" method="post">

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
                <td><input class="password" type="password" name="password" requierd></td>
              </tr> 
              <tr>
                <td><label>변경할 비밀번호 : </label></td> 
                <td><input type="password" class="password" name="Pwd2" requierd></td>
              </tr>
              <tr>
                 <td><label>비밀번호 확인 : </label></td> 
                 <td><input type="password" class="password" name="Pwd2" requierd></td>
              </tr>
            </table>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="UpdatePwd">수정</button>
          <button style="margin-right: 35%;" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>

      </div>

    </div>

  </div>

  <div class="modal fade" id="myModalP" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style=" margin-top: 15%; margin-left: 15%;" action="<%=request.getContextPath()%>/update.me" method="post">

    <div class="modal-dialog">

      <div class="modal-content" style="height: 10%; width: 70%;">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">연락처 변경</h4>
        </div>

        <div class="modal-body">
          <form>
            <table>
              <tr>
                <td><label>사용할 연락처를 입력해주세요.</label></td>
              </tr>
              <tr>
                  <td><label>변경할 연락처 : </label>
                  <input type="tel" class="tel" name="Phone" required></td>
              </tr>
            </table>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="UpdatePhone">수정</button>
          <button style="margin-right: 35%;" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>

      </div>

    </div>

  </div>

  <div class="modal fade" id="myModalE" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style=" margin-top: 15%; margin-left: 15%;" action="<%=request.getContextPath()%>/update.me" method="post">

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
                <td><label>사용할 이메일을 입력해주세요 </label></td>
                
              </tr>
              <tr>  
              <td><input class="email" type="email" name="email" requierd></td>
                  <td><button>인증확인</button></td>
              </tr>
             
            </table>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="UpdateEmail">수정</button>
          <button style="margin-right: 35%;" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>

      </div>

    </div>

  </div>
  
  <!--                           회원탈퇴                                                                                                        -->
    <div class="modal fade" id="status" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
    style=" margin-top: 15%; margin-left: 15%;">

    <div class="modal-dialog">

      <div class="modal-content" style="height: 10%; width: 70%;">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
        </div>

        <div class="modal-body">
          <form>
            <table>
          
              <tr>
                <td><label>현재 비밀번호를 입력하세요 </label></td>
              </tr>
              <tr>  
              <td><input class="password" type="password" name="currentP" required></td>
              <td><div onclick="pwdCheck();">확인</div></td>
              </tr>
             
            </table>
          </form>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="deleteMember">탈퇴</button>
          <button style="margin-right: 35%;" type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>

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
 		$("#UpdatePhone").click(function(){
 			var userPhone = $("#joinForm input[name='Phone']");
			
			
			$.ajax({
				url:"<%=request.getContextPath()%>/update.me",
				type:"post",
				data:{phone:userPhone.val()},
				success:function(data){
					$uPhone = $("#uPhone");
					$uPhone.html("");
					
					var $label = $("<label>").text(data[key].phone);
					
					
					$uPhone.append($label);
					
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