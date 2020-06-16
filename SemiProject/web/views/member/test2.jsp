<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, member.model.vo.*, home.model.vo.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
  #warp{
        width: 1200px;
    }
    #leftmenu{
    	float:left;
    	width:250px;
    	height:900px;
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
    #memberTb th{
    	text-align: center;
    	font-size: 16px;
    	height: 30px;
     	
    }
     #memberTb td{
     	height: 45px;
     	
     }
    #memberTb{
    	width: 980px;
    	
    }
    .pageingBtn button{
    	width: 40px;
    	height: 40px;
    }
    #modal-tb{
	width: 350px;
	margin-left:auto;
	margin-right: auto;
	
	}
	#modal-tb th{
	width:80px;
		text-align: right;
		font-size:15px;
		padding:3px 5px 3px 3px;
		border-bottom: 1px solid gray;
		
	}
	#modal-tb td{
		padding-left: 5px;
		font-size:15px;
		padding:5px;
		text-align: left;
		border-bottom: 1px solid gray;
	}
 
    #logoimg{
        width: 542px;
        height: 95px;
    }
    
    .log{   
        border:1px solid rgb(202, 202, 202) ;                
        padding-left: 8px;
        font-size: 16px;
        width: 447px;
        height: 52px;
        border-radius:5px; 
        /* 클릭시 검정태두리가 나타나는데 그거 없애줌*/
        outline: 0; 
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
    #log_btn{
        font-weight: 1000; 
        font-size: 25px; 
        border: none; 
        background-color:rgb(202, 202, 202);

        width: 447px;
        height: 52px;
        border-radius:5px; 
        /* 클릭시 검정태두리가 나타나는데 그거 없애줌*/
        outline: 0; 
    }
    /* 말풍선 모양 */
    .arrow_box {
    position: relative;
    
    }
    .arrow_box:after, .arrow_box:before {
        left: 100%;
        top: 50%;
        border: solid transparent;
        content: " ";
        height: 0;
        width: 0;
        position: absolute;
        pointer-events: none;
    }

    .arrow_box:after {
        border-color: rgba(136, 183, 213, 0);
        border-left-color:rgb(219, 219, 219);
        border-width: 8px;
        margin-top: -8px;
    }
    .arrow_box:before {
        border-color: rgba(194, 225, 245, 0);
        border-left-color: rgb(219, 219, 219);
        border-width: 14px;
        margin-top: -14px;
    }
    #filebox{
        width: 440px; 
        border:1px solid rgb(202, 202, 202); 
        padding: 15px 5px 3px; 
        line-height:100%; 
        margin:0; 
        display: none;
    } 
    #typeEx{
        float: left; 
        visibility:hidden;
        width: 21%;  
        border: 1px solid rgb(202,202,202); 
        background-color: rgb(219, 219, 219); 
        color: rgb(80,80,80); 
        font-size: 80%; 
        font-weight: 900; 
        padding: 1%; ; 
        border-radius:4%; 
        margin-right: 18px; 
    }
    .birth{
    	float: left; 
    	width: 130px; 
    	height: 52px; 
    	border-radius:5px; 
    	outline: 0; 
    	font-size: 18px; 
    	margin-left: 1.5em; 
    	padding-left: 10px; 
    	border-color: rgb(202, 202, 202);
		
    }
    .label_style{
    	float: left; 
    	font-size: 18px; 
    	font-weight: 900;
    }
    .check_img{
    	position: absolute; 
    	z-index: 100; 
    	width: 30px; 
    	right: 0; 
    	top: 0.8em;
    }
    
    #CF_Btn{
    	border-radius:5px;
    	background-color:rgb(202, 202, 202); 
    	border: 1px solid rgb(202, 202, 202)
    	;  
    	height: 52px; 
    	margin-top:2px; 
    	margin-left:15px";
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
</style>
</head>
<body>
	<button onclick="location.href='<%=request.getContextPath()%>/emailsend.me'">클릭</button>
</body>
</html>