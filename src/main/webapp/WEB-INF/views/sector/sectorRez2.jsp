<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
   
    <title>베지팜예약프로그램입니다.</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <style>   
      #back {
        width: 100%;
        height: 100%;
        max-height: 100%;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        position: fixed;
        top: 0;
        left: 0;
        z-index: -1;
        max-width: 100%;
        background-color: black;
      }
      #back .imgaaa {
        position: relative;
        width: 100%;
        height: 100%;
      }
      #back .imgview {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        -webkit-transition: opacity 1s ease-in-out;
        -moz-transition: opacity 1s ease-in-out;
        -o-transition: opacity 1s ease-in-out;
        transition: opacity 1s ease-in-out;
        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
        filter: alpha(opacity=0);
        opacity: 0;
      }
      #back .imgview:nth-child(1) {
        background:url(${pageContext.request.contextPath}/resources/images/pexels-photo-5677794.jpeg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(2) {
        background:url(${pageContext.request.contextPath}/resources/images/cook-g0222dc6c7_1920.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(3) {
        background:url(${pageContext.request.contextPath}/resources/images/food-1475223_1280.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(4) {
        background:url(${pageContext.request.contextPath}/resources/images/papapapapa.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview.apple {
        opacity: 1;
        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
        filter: alpha(opacity=1);       
      }
      #container {
        width: 480px;
        color: white;
        font-size: 0.9rem;
        margin-top: 2rem;
        margin-left: 3rem;
        float: left;
      }
   
      #controller {
        color: white;
        margin-top: 15rem;      
      }
      #controller h3 {
        margin-bottom: -10px;
      }
      #controller .btn div{
        display: inline;
      }
      #controller .btn img {
        width: 2rem;
        height: 2rem;
        filter: invert(85%);
        transition: 0.3s;
      }
      #controller .btn img:hover{
        transform:scale(1.1);
        filter: invert(100%);
      }
      #title {
        font-size: 1.7rem;
        display: inline;
      }      
		table {
        max-width: 1000px;
        margin: 0 auto;
        padding: 20px;
        background-color:rgba(0, 0, 0, 0.8);
      }       
        th, td {
            padding: 10px;
            text-align: center;
      }       
        .f {
            cursor: pointer;
      }
       button{     
          margin-top: 1rem;
        margin-left: 35rem;
       }
      
        
    </style>

  </head>
  <body>
      <h1>2023</h1>
    <div id="container">
      <h3>베지팜 예약프로그램</h3>
    <table>
    	<tr>
       		<td onclick="handle(1)">
       			<div class="f" id="showCalendar1">김씨네농장</div>
       		</td>
       		<td onclick="handle(1)">
       			<div class="f" id="showCalendar2">윤씨네농장</div>
       		</td> 
       		<td onclick="handle(1)">
       			<div class="f" id="showCalendar3">손씨네농장</div>
       		</td>
       		<td onclick="handle(1)">
       			<div class="f" id="showCalendar4">서씨네농장</div>
       		</td>       		
    	</tr>
    </table>
    
           
    </div>
    <div id="controller">
    	<table>
	    	<tr><td>※동절기에는 운영하지 않습니다.</td></tr>
	    	<tr><td>※선택불가시 예약이 만료된 구역입니다.</td></tr>
    	</table>
    	<hr>
    <!-- 김씨네농장  -->	
    <form action="${pageContext.request.contextPath}/sector/radioRez.my" method="post">
    	<table>
	    	<thead>
			 	<tr>
				 	<td colspan="4">1월~3월</td>
				 	<td colspan="4">4월~6월</td>
				 	<td colspan="4">7월~9월</td>
			 	</tr>
		    </thead>
		    
		    <tbody>
			    <tr>
				 	<td>[1구역</td>
				 	<td>2구역</td>
				 	<td>3구역</td>
				 	<td>4구역]</td>
				 	<td>[1구역</td>
				 	<td>2구역</td>
				 	<td>3구역</td>
				 	<td>4구역]</td>
				 	<td>[1구역</td>
				 	<td>2구역</td>
				 	<td>3구역</td>
				 	<td>4구역]</td>
			 	</tr>
			</tbody>	
   		</table>
	    <table id="calendar1">		    		        
		    <tfoot >
			    <tr>				   
			    </tr>
		    </tfoot>		    
	    </table>	    
	    <!--윤씨네-->
	    <table id="calendar2">		    
		    <tfoot>
			    <tr>				    
			    </tr>
		    </tfoot>		    
	    </table>	    
	    <!--손씨네-->
	    <table id="calendar3">		    
		    <tfoot>
			    <tr>				    
			    </tr>
		    </tfoot>
	    </table>	    
	    <!--서씨네-->
	    <table id="calendar4">		    		    
		    <tfoot>
			    <tr>				   
			    </tr>
		    </tfoot>		    
	    </table>		    		  
	    <button  type="submit" >예약하기</button>		        
    </form>
    </div>
    
    
    
    <!--백그라운드 이미지 영역  -->
    <div id="back">
      <div class="imgaaa">
        <div class="imgview apple" id="1"></div>
        <div class="imgview" id="2"></div>
        <div class="imgview" id="3"></div>
        <div class="imgview" id="4"></div>
      </div>
    </div>    
    <div id="bg"></div>
    
    
    
    
    
    
    <!-- 백그라운드 이미지 체인지 및 스크립트 영역 -->
    <script>     
   		 let index = 1;
    
      function handle(opt) {
        var A=1;
        var B=2023;
        document.getElementById(index).className = "imgview";
        if (opt > 0) {
          A += 1;
          if (A > 4) {
            A = 1;
            B += 1;
          }
          index += 1;
          index > 4 ? (index = 1) : index;
        } else {
          A -= 1;
          if (A < 1) {
            A = 4;
            B -= 1;
          }
          index -= 1;
          index < 1 ? (index = 4) : index;
        }
        console.log(index);
		document.getElementById(index).className = "imgview apple";
      }
      function hoverAction(){
      }
      
     
      
      
      
      
    
    	//1번째 농장

		$(document).ready(function() {
		$("#showCalendar1").click(function() {
		    $("#calendar1").show();
		    $("#calendar2").hide();
		    $("#calendar3").hide();
		    $("#calendar4").hide();

		   
		    $.ajax({
		        url: "${pageContext.request.contextPath}/sector/list",
		       
		        success: function(data){
		            var value = "";
					console.log(data);

		    		for (var i = 0; i < 12; i++) {
		                var sectorStatus = data.list[i].sectorStatus;
		                var sectorNo = data.list[i].sectorNo;
		                var sectorStatusText = sectorStatus === 1|| sectorStatus === 2 ? "disabled" : ""; 
		                value += "<td>[  <input name='radio' type='radio' value='" + sectorNo + "'  " + sectorStatusText + "></input>  ]</td>";  
		            }
		    $("#calendar1 tfoot").html(value);
		        },
		        error: function() {
			        console.log("Error occurred");
		        }
		    });
		});
	});
		
		
		
		
		
		
    	//2번째 농장
		
		$(document).ready(function() {
			$("#showCalendar2").click(function() {
			    $("#calendar2").show();
			    $("#calendar1").hide();
			    $("#calendar3").hide();
			    $("#calendar4").hide();
			   
			    $.ajax({
			        url: "${pageContext.request.contextPath}/sector/list",
			       
			        success: function(data){
			            var value = "";
		
			    		for (var i = 12; i < 24; i++) {
			                var sectorStatus = data.list[i].sectorStatus;
			                var sectorNo = data.list[i].sectorNo;
			                var sectorStatusText = sectorStatus === 1|| sectorStatus === 2  ? "disabled" : ""; 
			                value += "<td>[  <input name='radio' type='radio' value='" + sectorNo + "'  " + sectorStatusText + "></input>  ]</td>"; 
			            }
			    $("#calendar2 tfoot").html(value);
			        },
			        error: function() {
				        console.log("Error occurred");
			        }
			    });
			});
		});	
		
		
		
		
		//3번째 농장
		
		$(document).ready(function() {
			$("#showCalendar3").click(function() {
			    $("#calendar3").show();
			    $("#calendar1").hide();
			    $("#calendar2").hide();
			    $("#calendar4").hide();
			   
			    $.ajax({
			        url: "${pageContext.request.contextPath}/sector/list",
			       
			        success: function(data){
			            var value = "";
		
			    		for (var i = 24; i < 36; i++) {
			                var sectorStatus = data.list[i].sectorStatus;
			                var sectorNo = data.list[i].sectorNo;
			                var sectorStatusText = sectorStatus === 1|| sectorStatus === 2  ? "disabled" : "";  
			                value += "<td>[  <input name='radio' type='radio' value='" + sectorNo + "'  " + sectorStatusText + "></input>  ]</td>";  
			            }
			    $("#calendar3 tfoot").html(value);
			        },
			        error: function() {
				        console.log("Error occurred");
			        }
			    });
			});
		});
		
		
		
		
		
		//4번째 농장 
		
		$(document).ready(function() {
			$("#showCalendar4").click(function() {
			    $("#calendar4").show();
			    $("#calendar1").hide();
			    $("#calendar2").hide();
			    $("#calendar3").hide();
			   
			    $.ajax({
			        url: "${pageContext.request.contextPath}/sector/list",
			       
			        success: function(data){
			            var value = "";
		

			    		for (var i = 36; i < 48; i++) {
			                var sectorStatus = data.list[i].sectorStatus;
			                var sectorNo = data.list[i].sectorNo;
			                var sectorStatusText = sectorStatus === 1|| sectorStatus === 2 ? "disabled" : ""; 
			                value += "<td>[  <input name='radio' type='radio' value='" + sectorNo + "'  " + sectorStatusText + "></input>  ]</td>";  
			            }
			    $("#calendar4 tfoot").html(value);
			        },
			        error: function() {
				        console.log("Error occurred");
			        }
			    });
			});
		});

    </script>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
