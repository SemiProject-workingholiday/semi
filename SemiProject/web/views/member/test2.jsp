<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, member.model.vo.*"%>
<%
	 ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  #warp{
        width: 1200px;
    }
    #leftmenu{
    	float:left;
    	width:250px;
    	height:800px;
    	border-right: 2px solid rgb(113, 177, 197);
    	text-align: center;
    }
    #leftmenu ul{
    	text-align: left;
    	padding-left: 75px;
    	line-height: 55px;
    }
    #leftmenu li{
    	font-size:15px;
    	font-weight: 700;
    }
    .font_style{
    	font-size: 25px;
    	font-weight: 900;
    }
    #content{
    	float:left;
    	width:950px;
    	height:800px;
    	padding:120px 0 0 80px;
    }
    #memberTb{
    	width: 950px;
    }
    #memberTb th{
    	text-align: center;
    	font-size: 15px;
    }
    
</style>
</head>
<body>
	<%@include file="../common/menubar.jsp"%>
	<div id="warp">
		<div id="leftmenu">
			<div style="height: 120px;"></div>
			<p class="font_style">회원 관리
			<div style="height: 50px;"></div>
			<ul>
			<li>워홀러 회원조회</li>
			<li>현지인 회원조회</li>
			<li>신고내역</li>
			</ul>
		</div>
		
		<div id="content">
			<p style="text-align: left;" class="font_style">워홀러 회원
			<div id="selectbar" style="height: 30px"></div>
			<table id="memberTb" border="1">
				<tr>
					<th style="width: 53px ">번호</th>
					<th style="width: 120px">아이디</th>
					<th style="width: 280px">이메일</th>
					<th style="width: 120px">이름</th>	
					<th style="width: 125px">생년월일</th>
					<th>성별</th>
					<th style="width: 100px">제재</th>
					<th style="width: 100px">탈퇴</th>
							
				</tr>
				 <%for(int i=0;i<list.size();i++){%>
				<tr>
					
					<td><%=((Member)list.get(i)).getUserNo()%></td>
					<td><%=((Member)list.get(i)).getUserId()%></td>
					<td><%=((Member)list.get(i)).getEmail()%></td>			
					<td><%=((Member)list.get(i)).getUserName()%></td>
					<td><%=((Member)list.get(i)).getUserBirth()%></td>
					<td><%=((Member)list.get(i)).getGender()%></td>
					<td>
					<% if(((Member)list.get(i)).getSanction().equals("N")){%>
						<button>제재하기</button>
					<%}else{ %>
						<p>사용불가
					<%} %>
					</td>
					<td><%=((Member)list.get(i)).getStatus()%></td>
					
				
				</tr>
				<%} %> 
			</table>
		</div>
	</div>
</body>
</html>