<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, member.model.vo.*, home.model.vo.*"%>
<%
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
 	Pagination pn = (Pagination)request.getAttribute("pn");
 	int listCount = pn.getListCount();
	int currentPage = pn.getCurrentPage();
	int maxPage = pn.getMaxPage();
	int startPage = pn.getStartPage();
	int endPage = pn.getEndPage();  
	
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
    	cursor:pointer;
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
    	width: 980px;
    }
    #memberTb th{
    	text-align: center;
    	font-size: 16px;
    	height: 30px;
    }
     #memberTb td{
     	height: 45px;
     }
    .pageingBtn button{
    	width: 40px;
    	height: 40px;
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
			<li><div onclick="location.href='<%=request.getContextPath()%>/selectallmember.me?grade=2'">워홀러 회원조회</div></li>
			<li><div onclick="location.href='<%=request.getContextPath()%>/selectallmember.me?grade=3'">현지인 회원조회</div></li>
			<li>신고내역</li>
			</ul>
		</div>
		
		<div id="content">
			<p style="text-align: left;" class="font_style">워홀러 회원
			<div id="selectbar" style="height: 30px"></div>
			<table id="memberTb" border="1">
				<tr>
					<th style="width: 53px ">번호</th>
					<th>회원번호</th>
					<th style="width: 120px">아이디</th>
					<th style="width: 230px">이메일</th>
					<th style="width: 120px">이름</th>	
					<th style="width: 125px">생년월일</th>
					<th>성별</th>
					<th style="width: 100px">제재</th>
					<th style="width: 100px">탈퇴</th>
							
				</tr>
				 <% 
				 	
				   for(int i=0;i<list.size();i++){
				   String sanction = ((Member)list.get(i)).getSanction();
				   String status = ((Member)list.get(i)).getStatus();
					   %>
					   		<tr id="s1">
							<td><%=((Member)list.get(i)).getTableNo()%></td>
					   <%if(sanction.equals("N") && status.equals("N")){ %>
	
							<td><%=((Member)list.get(i)).getUserNo()%></td>
							<td><%=((Member)list.get(i)).getUserId()%></td>
							<td><%=((Member)list.get(i)).getEmail()%></td>			
							<td><%=((Member)list.get(i)).getUserName()%></td>
							<td><%=((Member)list.get(i)).getUserBirth()%></td>
							<td><%=((Member)list.get(i)).getGender()%></td>
							<td><button>제재하기</button></td>
							<td><p style="margin:0;"> </p>
					   <%} else if(sanction.equals("Y")){%>
					   		<td style="color:rgb(223,102,102);"><%=((Member)list.get(i)).getUserNo()%></td>
							<td style="color:rgb(223,102,102);"><%=((Member)list.get(i)).getUserId()%></td>
							<td style="color:rgb(223,102,102);"><%=((Member)list.get(i)).getEmail()%></td>			
							<td style="color:rgb(223,102,102);"><%=((Member)list.get(i)).getUserName()%></td>
							<td style="color:rgb(223,102,102);"><%=((Member)list.get(i)).getUserBirth()%></td>
							<td style="color:rgb(223,102,102);"><%=((Member)list.get(i)).getGender()%></td>
							<td style="color:rgb(223,102,102);"><p id="gr" style="margin:0;">사용불가</td>
					   		<td style="color:rgb(223,102,102);"><p style="margin:0;">─</p></td>
					   <%} else if(status.equals("Y")){ %>
					   		<td style="color:rgb(160,160,160);"><%=((Member)list.get(i)).getUserNo()%></td>
							<td style="color:rgb(160,160,160);"><%=((Member)list.get(i)).getUserId()%></td>
							<td style="color:rgb(160,160,160);"><%=((Member)list.get(i)).getEmail()%></td>			
							<td style="color:rgb(160,160,160);"><%=((Member)list.get(i)).getUserName()%></td>
							<td style="color:rgb(160,160,160);"><%=((Member)list.get(i)).getUserBirth()%></td>
							<td style="color:rgb(160,160,160);"><%=((Member)list.get(i)).getGender()%></td>
							<td style="color:rgb(160,160,160);"><button type="button" disabled >제재하기</button></td>
							<td style="color:rgb(160,160,160);"><p style="margin:0;">탈퇴 회원</p></td>
							
							
					   <%} %>
				<%} %>
				
			</table>
			<div id="selectbar" style="height: 30px"></div>
			 <div class="pageingBtn">
				<button onclick="location.href='<%=request.getContextPath()%>/selectallmember.me?currentPage=1'"><<</button>
				<button onclick="location.href='<%=request.getContextPath()%>/selectallmember.me?currentPage=<%=currentPage-1%>'"><</button>
				<%for(int i=startPage; i <=endPage ; i++){ %>
					<button onclick="location.href='<%=request.getContextPath()%>/selectallmember.me?currentPage=<%=i%>'"><%=i %></button>
				<%} %>
				<button onclick="location.href='<%=request.getContextPath()%>/selectallmember.me?currentPage=<%=currentPage+1%>'">></button>
				<button onclick="location.href='<%=request.getContextPath()%>/selectallmember.me?currentPage=<%=maxPage%>'">>></button>
			</div> 
			<div id="selectbar" style="height: 30px"></div>
			<script>
				
			</script>
			
		</div>
	</div>
</body>
</html>