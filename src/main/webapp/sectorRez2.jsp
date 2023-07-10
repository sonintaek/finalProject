<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
   
    <title>캘린더 바닐라 js 공부하는 택이</title>
 


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

      #back .imgwrap {
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
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-4.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(2) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-9.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(3) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-13.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(4) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-3.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(5) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-2.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(6) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-5.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(7) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-6.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(8) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-7.jpg)0 0 no-repeat;
        background-size: cover;
      }

      #back .imgview:nth-child(9) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-8.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(10) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-10.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(11) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-12.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(12) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-14.jpg)0 0 no-repeat;
        background-size: cover;
      }
      #back .imgview:nth-child(13) {
        background:url(${pageContext.request.contextPath}/resources/img/international-landscape-photographer-of-the-year-2020-winners-info-16.jpg)0 0 no-repeat;
        background-size: cover;
      }

      #back .imgview.opaque {
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
        background-color: skyblue;
    }
      
     
        
        th, td {
            padding: 10px;
            text-align: center;
        }
        
        .f {
            cursor: pointer;
        }
       
      
        
    </style>






  </head>
  <body>
      <h1>2023</h1>
    <div id="container">
      <div class="f">베지팜 예약프로그램</div>
    
        <div onclick="handle(1)"><div class="f" onclick="showCalendar1()">김씨네농장</div></div>
        <div onclick="handle(1)"><div class="f" onclick="showCalendar2()">윤씨네농장</div></div>
        <div onclick="handle(1)"><div class="f" onclick="showCalendar3()">손씨네농장</div></div>
        <div onclick="handle(1)"><div class="f" onclick="showCalendar4()">서씨네농장</div></div>
     
    </div>
    <div id="controller">
      <%-- <img src="${pageContext.request.contextPath}/resources/img/next.png" style='margin-left:2rem'/>
      <img src="${pageContext.request.contextPath}/resources/img/previous.png"/> --%>
    
    
    
   
    

    <table id="calendar1">
    </table>
    <table id="calendar2">
    </table>
	<table id="calendar3">
    </table>
    <table id="calendar4">
    </table>
    
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    </div>
    <div id="back">
      <div class="imgwrap">
        <div class="imgview opaque" id="1"></div>
        <div class="imgview" id="2"></div>
        <div class="imgview" id="3"></div>
        <div class="imgview" id="4"></div>
        <div class="imgview" id="5"></div>
        <div class="imgview" id="6"></div>
        <div class="imgview" id="7"></div>
        <div class="imgview" id="8"></div>
        <div class="imgview" id="9"></div>
        <div class="imgview" id="10"></div>
        <div class="imgview" id="11"></div>
        <div class="imgview" id="12"></div>
        <div class="imgview" id="13"></div>
      </div>
    </div>
    <div id="bg"></div>
    <script>
      
    let index = 1;
   
  
      
      function handle(opt) {
        var A=1;
        var B=2023;
        document.getElementById(index).className = "imgview";
        if (opt > 0) {
          A += 1;
          if (A > 12) {
            A = 1;
            B += 1;
          }
          index += 1;
          index > 13 ? (index = 1) : index;
        } else {
          A -= 1;
          if (A < 1) {
            A = 12;
            B -= 1;
          }
          index -= 1;
          index < 1 ? (index = 13) : index;
        }
        console.log(index);
/*         makeCalendar();*/ 
		document.getElementById(index).className = "imgview opaque";
      }
      function hoverAction(){
      }
      
      
      
      
      
      
      
      
  	function showCalendar1() {
		
		
        document.getElementById("calendar1").style.display = "";
        document.getElementById("calendar2").style.display = "none";
        document.getElementById("calendar3").style.display = "none";
        document.getElementById("calendar4").style.display = "none";

        var calendarTable1 = document.getElementById("calendar1");
        calendarTable1.innerHTML = "";
		//김씨네농장
        var Row = calendarTable1.insertRow();
        var Cell = Row.insertCell();
        Cell.colSpan = 4;
        Cell.innerText = "김씨네 농장";
		
        var Row = calendarTable1.insertRow();
        Row.innerHTML = "<td>구역</td><td>1월~3월</td><td>4월~6월</td><td>7월~9월</td>";
        
        for (var i = 1; i <= 4; i++) {
            var Row = calendarTable1.insertRow();
            Row.innerHTML = "<td>[" + i + "]구역</td><td><a href='#'>예약</a></td><td><a href='#'>예약</a></td><td><a href='#'>예약</a></td>";
        }
	}
    function showCalendar2() {
       
        //윤씨네 농장
        document.getElementById("calendar1").style.display = "none";
        document.getElementById("calendar2").style.display = "";
        document.getElementById("calendar3").style.display = "none";
        document.getElementById("calendar4").style.display = "none";

        var calendarTable2 = document.getElementById("calendar2");
        calendarTable2.innerHTML = "";
    
        var yearRow2 = calendarTable2.insertRow();
        var yearCell2 = yearRow2.insertCell();
        yearCell2.colSpan = 4;
        yearCell2.innerText = "윤씨네 농장";
  
        var monthRow2 = calendarTable2.insertRow();
        monthRow2.innerHTML = "<td>구역</td><td>1월~3월</td><td>4월~6월</td><td>7월~9월</td>";

        for (var month = 1; month <= 4; month++) {
            var monthRow2 = calendarTable2.insertRow();
            monthRow2.innerHTML = "<td>[" + month + "]구역</td><td><a href='#'>예약</a></td><td><a href='#'>예약</a></td><td><a href='#'>예약</a></td>";
        }
    }   
        
	function showCalendar3() {
		document.getElementById("calendar1").style.display = "none";
	        document.getElementById("calendar2").style.display = "none";
	        document.getElementById("calendar3").style.display = "";
	        document.getElementById("calendar4").style.display = "none";
        //손씨네 농장
        var calendarTable3 = document.getElementById("calendar3");
        calendarTable3.innerHTML = "";
        var yearRow3 = calendarTable3.insertRow();
        var yearCell3 = yearRow3.insertCell();
        yearCell3.colSpan = 4;
        yearCell3.innerText = "손씨네 농장";
  
        var monthRow3 = calendarTable3.insertRow();
        monthRow3.innerHTML = "<td>구역</td><td>1월~3월</td><td>4월~6월</td><td>7월~9월</td>";

        for (var month = 1; month <= 4; month++) {
            var monthRow3 = calendarTable3.insertRow();
            monthRow3.innerHTML = "<td>[" + month + "]구역</td><td><a href='#'>예약</a></td><td><a href='#'>예약</a></td><td><a href='#'>예약</a></td>";
        }
        
	}
	function showCalendar4() {
		document.getElementById("calendar1").style.display = "none";
	        document.getElementById("calendar2").style.display = "none";
	        document.getElementById("calendar3").style.display = "none";
	        document.getElementById("calendar4").style.display = "";
      //서씨네 농장
      	var calendarTable4 = document.getElementById("calendar4");
      	calendarTable4.innerHTML = "";
        var yearRow4 = calendarTable4.insertRow();
        var yearCell4 = yearRow4.insertCell();
        yearCell4.colSpan = 4;
        yearCell4.innerText = "서씨네 농장";
  
        var monthRow4 = calendarTable4.insertRow();
        monthRow4.innerHTML = "<td>구역</td><td>1월~3월</td><td>4월~6월</td><td>7월~9월</td>";

        for (var month = 1; month <= 4; month++) {
            var monthRow4 = calendarTable4.insertRow();
            monthRow4.innerHTML = "<td>[" + month + "]구역</td><td><a href='#'>예약</a></td><td><a href='#'>예약</a></td><td><a href='#'>예약</a></td>";
        }
         
	}
	
      
      
      
      
      
      
      
      
      
      
      
    </script>
  </body>
</html>
