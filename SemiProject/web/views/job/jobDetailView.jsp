<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
      hr{
        border:1px solid black;
      }

      h3{
          font-weight: bolder;
      }

      #infoFrame{
          margin-left:20%;
          margin-right: 20%;
          /* border:1px solid black; */
      }

      #likeBtn{
          background:white;
          border:0.5px solid gray;
          border-top-left-radius: 0.5em;
          border-top-right-radius: 0.5em;
          border-bottom-left-radius: 0.5em;
          border-bottom-right-radius: 0.5em;
      }

      #reportBtn{
          background:white;
          border:0.5px solid gray;
          border-top-left-radius: 0.5em;
          border-top-right-radius: 0.5em;
          border-bottom-left-radius: 0.5em;
          border-bottom-right-radius: 0.5em;
      }

      /* #jobTitle{
          margin-left:1%;
      } */

      #infoFrame div{
        margin-left:1%;
        margin-bottom: 2%;
      }

      #infoFrame div div{
          /* display: inline-block; */
          float: right;
          /* border:1px solid black; */
          /* margin:3% 1%; */
          margin-top: 3%;
          margin-bottom:0;
          margin-left: 1%;
          margin-right: 1%;
      }

      #logo{
          max-width:60%;
      }

      .simpleInfo{
          width:12%;
          margin-top:3% !important;
      }

      /* .simpleInfo div{
          padding:25%;
          border:none;
          border-radius: 50%;
          background:rgb(113, 177, 197);
      } */

      .jobContent{
          width:99%;
      }
      
      .jobContent td{
        padding:1% 0%;
      }

      #applyBtn{
          width:20%;
          padding:1% 0%;
          border:1px solid lightgray;
          border-bottom-left-radius: 0.3em;
          border-bottom-right-radius: 0.3em;
          border-top-right-radius: 0.3em;
          border-top-left-radius: 0.3em;
      }

      #resumeFile{
          border:1px solid black;
          width:50%;
          margin-left:25% !important;
          border-bottom-left-radius: 0.7em;
          border-bottom-right-radius: 0.7em;
          border-top-left-radius: 0.7em;
          border-top-right-radius: 0.7em;
      }

      h5{
          margin-top:3%;
          margin-left:1%;
      }
      h6{
          text-align: center;
      }
</style>
</head>
<body>
	<%@ include file="../../views/common/menubar.jsp" %>

    <div id='infoFrame'>
        <div align=right style='margin-top:2%;'>
            <button id='likeBtn' onclick='likeBtn();'>♡찜하기</button>
            <button id='reportBtn'>신고하기</button>
        </div>

        <hr>

        <div id='jobTitle'>
            <p>워킹스루</p>
            <p><h4 style='font-weight: bolder;'>프론트앤드/백앤드 개발자 모집</h4></p>
        </div>
        <div>
            <span>
                <img id='logo' src='../../images/semi.png'>
            </span>
            <div class='simpleInfo'>
                <div style='border-radius: 50%; border:1px rgb(113, 177, 197); background:rgb(113, 177, 197);
                padding:25%; margin:9% 9%;'>
                    <p align='center'>마감</p>
                </div>
                <p align='center'>마감 14일전</p>
            </div>
            <div class='simpleInfo'>
              <img src='../../images/jobImg/time.PNG' style='max-width: 80%; margin:5% 3%; margin-left: 10%;'>
              <p align='center'>09:00~18:00</p>
          </div>
            <div class='simpleInfo'>
              <img src='../../images/jobImg/calender.PNG' style='max-width: 90%; margin:6% 0%; margin-left: 5%;'>
              <p align='center'>주중</p>
          </div>
            <div class='simpleInfo'>
              <div style='border-radius: 50%; border:1px rgb(113, 177, 197); background:rgb(113, 177, 197);
              padding:25%; margin:9% 9%;'>
                  <p align='center'>장기</p>
              </div>
              <p align='center'>3개월~</p>
          </div>
            <div class='simpleInfo'>
              <div style='border-radius: 50%; border:1px rgb(113, 177, 197); background:rgb(113, 177, 197);
                          padding:25%; margin:9% 9%;'>
                  <p align='center'>시급</p>
              </div>
              <p align='center'>20.50$</p>
          </div>
        </div>

        <hr>

        <div>
            <h3>모집조건</h3>
            <table class='jobContent'>
                <tr>
                    <td style='width:15%;'>마감일</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>인원</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>성별</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>연령</td>
                    <td>4</td>
                </tr>
            </table>
        </div>
        <hr>
        <div>
            <h3>근무조건</h3>
            <table class='jobContent'>
                <tr>
                    <td style='width:15%;'>급여</td>
                    <td>5</td>
                </tr>
                <tr>
                    <td>근무기간</td>
                    <td>6</td>
                </tr>
                <tr>
                    <td>근무요일</td>
                    <td>7</td>
                </tr>
                <tr>
                    <td>근무시간</td>
                    <td>8</td>
                </tr>
                <tr>
                    <td>업직종</td>
                    <td>9</td>
                </tr>
            </table>
        </div>
        <hr>
        <div>
            <h3>상세내용</h3>
            <table class='jobContent'>
                <tr>
                    <td style='width:15%;'>학력</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>우대</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>고용형태</td>
                    <td>3</td>
                </tr>
                
            </table>
        </div>
        <hr>
        <div>
            <h3>근무지역</h3>
            <table class='jobContent'>
                <tr>
                    <td style='width:15%;'>주소</td>
                    <td>4</td>
                </tr>
            </table>
        </div>
        <hr>
        <div align='center'>
            <button id='applyBtn' onclick='applyJob();'>지원하기</button>
        </div>
        <div id='resumeFile'>
            <h5>이력서 첨부</h5>
            <input type='file' id='resume'>
            <h6>이력서를 파일로 첨부하여야 지원이 진행됩니다.</h6>
        </div>
    </div>

    <script>
      $(function applyJob(){
        var fileCheck=$('#resume').val();

        if(fileCheck==true){
          $('#applyBtn').on('click',function(){
            alert('이력서 파일을 첨부해주세요.');
            $(this).attr('disabled',true);

          })
        }else{
          $('#applyBtn').on('click',function(){
            alert('구직 신청이 완료 되었습니다.');
          })
        }
        
      })
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assetsjs/ie10-viewport-bug-workaround.js"></script>
    <!-- <script src="vendor/holder.js"></script> -->
  </body>
</html>