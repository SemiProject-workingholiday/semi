<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "home.model.vo.*, java.util.ArrayList"%>
<%
	Home home = (Home)request.getAttribute("home");
	String period = home.getPeriod();
	String essentialitem = home.getEssentialitem();
	String wifi = home.getWifi();
	String television = home.getTelevision();
	String heater = home.getHeater();
	String airconditional = home.getAirconditional();
	String livingroom = home.getLivingroom();
	String diningroom = home.getDiningroom();
	String bathroom = home.getBathroom();
	String pet = home.getPet();
	
	ArrayList<Img> flist = (ArrayList<Img>)request.getAttribute("flist");
	
%>
<!DOCTYPE html>
<html lang="ko">
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

    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- Custom styles for this template -->
    <style>
    	#content{
	        width: 100%;
	        font-family: 'Noto Sans KR', sans-serif;
      	}
      	
      	#photo{
	        display: grid;
	        width: 100%;
	        grid-template-columns: 35% 20% 20%;
	        grid-template-rows: 48% 48%;
	        margin: 3.5em 12em;
	    }
	     #photo img{
	        width: 100%;
	        height: 100%;
	      }
	
	      .item1 {
	        grid-row-start: 1;
	        grid-row-end: 3;
	      }
	
	      #detail_content{
	        position: relative;
	        margin-left: 17%;
	        margin-bottom: 7%;
	      }
	
	      .detail{
	        width: 75%;
	      }
	
	      #middle{
	        margin-top: 3%;
	      }
	      
	      #middle img{
	        width: 1.3em;
	        height: 1.3em;
	      }
	      
	      #registerReview{
	        width: 100%;
	        height: 2.5em;
	        background:gray;
	        color: white;
	        border: none;
	        border-radius: 0.4em;
	      }
	
	      #reservation { 
	        position: absolute; 
	        font-size: 0.9em; 
	        background: #eaeaea;
	        width: 22%;
	        height: 17%;
	        right: 0;
	      }
	
	      .reservation_detail tr:last-child {
	         text-align: center;
	       }
	
	      #reservation button{
	        width: 70%;
	        line-height: 2.4em;
	        margin-top: 12%;
	      }
	
	      #contents td{
			
	    	padding-bottom:3%
	        
	      }
	
	      .reservation_detail{
	        border-spacing:10px;
	        margin-bottom: 5px;
	      }
	
	      #review{
	        width: 100%;
	      }
	      
	      .starRev{
	        width: 110%;
	      }
	
	      .starR{
	        background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
	        background-size: auto 70%;
	        width: 20px;
	        height: 30px;
	        display: inline-block;
	        text-indent: -9999px;
	        cursor: pointer;
	      }
	
	      .starR.on{background-position:0 0;}
    </style>
  </head>
  <body>
    <%@ include file = "../common/menubar.jsp" %>
    <div id ="contents">
		<div id = "photo">
	      <% if(flist.isEmpty()){ System.out.println("아무것도없음");%>
							
			<%} else{%>
				<%for(int i = 0; i < flist.size(); i++) { 
					Img a = flist.get(i);%>
				        <div class = "item<%=i%>" style = "background-color: red;"><img src = "<%=request.getContextPath() %>/home_uploadFiles/<%=a.getImg()%>"></div>
				<%} %>
			<%} %>
		</div>

      <div id = "detail_content">
        <div id = "top">
          <h3><b><%=home.getTitle()%></b></h3>
          <div class = "detail">
            <p><%=home.getContent()%></p>
          </div>
        </div>
        <div id = "middle">
            <div id="reservation" style = "position: absolute">
              <table class = "reservation_detail">
                <tr> 
                    <td><b>가격</b></td>
                    <td style="text-align: center;">
                       <span id = "price" width:38px;><%=home.getFee()%></span>
                    </td>
                </tr>
                <tr>
                  <td><b>개월</b></td>
                  <td style="text-align: center;">
                    <div class="number">
                      <a href="#" id="decreaseQuantity"><img src = "<%=request.getContextPath()%>/images/decrease.png" style="width: 18px; height: 18px;"></a>
                      <input type = "number" id = "numberUpDown" value="1" style = "width:38px;"><span> 개월</span>
                      <a href="#" id="increaseQuantity"><img src = "<%=request.getContextPath()%>/images/increase.png" style="width: 18px; height: 18px;"></a>
                    </div>
                  </td>
                </tr>
                <tr><td></td></tr>

                <tr> 
                  <td style="width:70px;"><b>총 가격</b></td>
                  <td style="text-align: center;">
                     <span id = "totalPrice" width:38px;><%=home.getFee()%></span>
                  </td>
                </tr>
                <tr>
                  <td colspan="3"><button>예약하기</button></td>
                </tr>     
              </table>
              
          </div>
     
          <table id = "detailContent">
            <tr> 
                <td rowspan="3" style="margin-right:30px"><b>편의시설</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <% if(essentialitem.equals("Y")) { %>
                	<td colspan="2">
                    	<p>필수품목(수건, 침대 시트, 비누, 화장지, 베개)</p>
                	</td>
                <%} %>
            </tr>
            <tr>
                <td colspan="2">
                	<% if(wifi.equals("Y")) { %>
                    	<img src = "<%=request.getContextPath()%>/images/wifi.png"> 무선인터넷 &nbsp;&nbsp;
                	<%} %>
                	<% if(television.equals("Y")) { %>
                    	<img src = "<%=request.getContextPath()%>/images/wifi.png"> TV &nbsp;&nbsp;&nbsp;
                	<%} %>
                	<% if(heater.equals("Y")) { %>
                    	<img src = "<%=request.getContextPath()%>/images/heater.png"> 난방 &nbsp;&nbsp;
                	<%} %>
                                        
                </td>
            </tr>
            <tr>
                <td colspan="2">
                	<% if(airconditional.equals("Y")) { %>
                    	<img src = "<%=request.getContextPath()%>/images/aircondition.png"> 에어컨 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<%} %>
                </td>
            </tr>
            <tr> 
                <td><b>공용공간</b></td>
                <td colspan="2">
                	<% if(livingroom.equals("Y")) { %>
                    	거실 &nbsp;&nbsp;&nbsp;&nbsp;
                	<%} %>
			        <% if(diningroom.equals("Y")) { %>
                    	주방 &nbsp;&nbsp;&nbsp;&nbsp;
                	<%} %>
                	<% if(bathroom.equals("Y")) { %>
                    	화장실
                	<%} %>   
                </td>
            </tr>
            <tr> 
                <td><b>애완동물</b></td>
                <% if(pet.equals("Y")) { %>
                	<td colspan="2">
                    	<img src = "<%=request.getContextPath()%>/images/pet.png">
                	</td>
                <%} %> 
                
            </tr>
            <tr>
                <td><b>기간</b></td>
                <% if(period.equals("3monthless")) {%>
                	<td colspan="2">3개월 미만</td>
                <%} else if(period.equals("3months")){%>
                	<td colspan="2">3개월 이상</td>
                <%} else if(period.equals("6months")) {%> 
                	<td colspan="2">6개월 이상</td>
                <%} else if(period.equals("9months")) {%>
                	<td colspan="2">9개월 이상</td>
                <%} else {%>
                	<td colspan="2">1년 이상</td>
                <%} %>
                
            </tr>
            <form id = "reviewRegister" enctype="multipart/form-data" method = "post">
	            <tr>
	                <td rowspan="2"><b>후기</b></td>
	                <td colspan="4">
	                    <textarea cols="70" name="reviewContent" rows="5" style="resize: none;"></textarea>
	                </td>
	            </tr>
	            <tr>
	              <td>
	                <div class="starRev">
	                  <span class="starR on">별1</span>
	                  <span class="starR">별2</span>
	                  <span class="starR">별3</span>
	                  <span class="starR">별4</span>
	                  <span class="starR">별5</span>
	                </div>
	              </td>          
	              <td width = "250px">
	                <input type = "file" multiple = "multiple" name = "photo" id = "reviewPhoto">
	              </td>
	                  
	              <td width = "120px"> <input type = "submit" id = "registerReview" onclick = "registerReview()" value = "확인"> </td>
            	</tr>
            </form>
          </table>
          <div id = "review">
            <img src = "<%=request.getContextPath()%>/images/profile.png" style = "width: 40px; height: 40px;">
            <span><b>홍길동</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span><small>2020.05.29</small></span>
            <pre style = "background: none; border: none; margin-left: -60px;">
              <img src = "<%=request.getContextPath()%>/images/homes.jpg" style="width: 70px; height: 70px;">
		              가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
		              가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
		              가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바
            </pre>
            <img src = "<%=request.getContextPath()%>/images/profile.png" style = "width: 40px; height: 40px;">
            <span><b>홍길동</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span><small>2020.05.29</small></span>
            <pre style = "background: none; border: none; margin-left: -60px;">
		              가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
		              가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바사
		              가나다라마바사가나다라마바사가나다라마바사가나다라마바사가나다라마바
            </pre>
          </div>
        </div>
      </div>
    </div>

    <div id = "footer">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017 Delivery Management System &middot; <a href="#">Privacy</a></p>
    </div>
    
    <script>
        $(function(){
          $('#decreaseQuantity').click(function(e){
            e.preventDefault();
            var stat = $('#numberUpDown').val();
            var num = parseInt(stat,10);
            num--;
            if(num<=0){
              alert('더이상 줄일수 없습니다.');
              num =1;
             }
            $('#numberUpDown').val(num);
            $("#totalPrice").text("₩ " + num * 190000)
          });
          
          $('#increaseQuantity').click(function(e){
            e.preventDefault();
            var stat = $('#numberUpDown').val();
            var num = parseInt(stat,10);
            num++;

            if(num>30){
              alert('더이상 늘릴수 없습니다.');
              num=5;
            }
            $('#numberUpDown').val(num);
            $("#totalPrice").text("₩ " + num * 190000)
          });
      });
        
      $('.starRev span').click(function(){
         $(this).parent().children('span').removeClass('on');
         $(this).addClass('on').prevAll('span').addClass('on');

         console.log($('.on').length);

         return false;
      });

      $(function() {
        var offset = $("#reservation").offset();
        var topPadding = 300;
        $(window).scroll(function() {
          if ($(window).scrollTop() > offset.top) {
            $("#reservation").stop().animate({
              marginTop: $(window).scrollTop() - offset.top + topPadding
            });
          } else {
            $("#reservation").stop().animate({
              marginTop: 0
            });
          };
        });
      });
      
      $(function(){
    	  var fileTarget = $('#reviewPhoto');
    	  var file = "";
    	  var filename = "";

		  fileTarget.on('change', function(){  // 값이 변경되면
			if(window.FileReader){  // modern browser
				filename = $(this)[0].files[0].name;
				file = filename;
			} 
			else {  // old IE
				filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
				file = filename;
			}

			// 추출한 파일명 삽입
		});
			console.log(file);
      })
      
      
      
     
			

    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assetsjs/ie10-viewport-bug-workaround.js"></script>
    <!-- <script src="vendor/holder.js"></script> -->

  </body>
</html>