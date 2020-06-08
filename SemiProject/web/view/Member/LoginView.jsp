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

	<form  method="post" action="<%=request.getContextPath()%>/login.me" onsubmit="return loginf()">
		<label>아이디:</label>
		<input type="text" name="userId" id="userId"><br>
		<label>비밀번호</label>
		<input type="password" name="userPw" id="userPw"><br>
		
		<input type="submit" value="로그인" >
	</form>
	<script>
		function loginf(){
			var userId =$('#userId').val();
			
			if($('#userId').val().trim().length == 0){
				alert("아이디를 입력해 주세요");
				return false;
			}
			if($('#userPw').val().trim().length == 0){
				alert("비밀번호를 입력해 주세요");
				return false;
			}
			return true;
		}
	
	</script>
	
	<button onclick="location.href='<%=request.getContextPath()%>/login.me'"></button>
</body>
</html>