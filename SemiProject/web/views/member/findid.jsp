<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<form action="#" method="post" >
<label>이름:</label><input type="text" name="userName" id="userName"><br>
<lable>이메일:</lable><input type="email" name="email" id="email">
<button type="button" onclick="Btn();">인증번호 받기</button><br>
<input type="text" name="CertificationNum" id="CertificationNum" placeholder="인증번호를 입력해주세요" readonly>
<input type="submit" >입력완료
</form>

<script>
	//이름과 이메일이 데이터베이스에 있는 정보와 맞는지 확인하고
	//맞다면 이메일 인증번호를 보냄
	function Btn(){
		var userName = $("#userName");
		var email = $("#email");
		if(userName.val().trim().length == 0){
			alert("이름을 입력해 주세요");
			userName.focus();
		} else if(email.val().trim().length == 0){
			alert("이메일을 입력해 주세요");
			email.focus();
		}else{
			$.ajax({
				url:"<%=request.getContextPath()%>/findid.me",
				type:"post",
				data:{userName:userName.val(), email:email.val()},
				success:function(data){
					if(data=="No"){
						alert("입력하신 정보와 일치하는 정보가 없습니다.\n다시한번 확인한 후 인증번호 받기 버튼을 눌러주세요");
						$("#CertificationNum").attr("readonly",true);
					}else{						
						$("#CertificationNum").attr("readonly",false);
					}
				},
				
				error:function(request,status,error){
	                   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	            }
				
			});
		}
		
	}

</script>


</body>
</html>