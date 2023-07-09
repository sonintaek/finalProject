<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
   
    <title>캘린더 바닐라 js 공부하는 택이</title>
    
    
    
    
   <style>
        table {
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }
        
        .year {
            cursor: pointer;
        }
    </style>
    <script>
    	var calendarTable2;
		
    	function showCalendar1() {
            var calendarTable1 = document.getElementById("calendar1");
    		calendarTable1.innerHTML = "";
    		if (calendarTable2) {
    	        calendarTable2.innerHTML = "";
    	    }
            
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
            var calendarTable2 = document.getElementById("calendar2");
            calendarTable2.innerHTML = "";
            
            //윤씨네 농장
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
            var calendarTable3 = document.getElementById("calendar3");
            calendarTable3.innerHTML = "";
            
            //손씨네 농장
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
            var calendarTable4 = document.getElementById("calendar4");
            calendarTable4.innerHTML = "";
			
          //서씨네 농장
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
</head>
<body>
    <h1>예약 캘린더</h1>

    <div class="year" onclick="showCalendar1()">김씨네농장</div>
    <div class="year" onclick="showCalendar2()">손씨네농장</div>
    <div class="year" onclick="showCalendar3()">서씨네농장</div>
    <div class="year" onclick="showCalendar4()">윤씨네농장</div>
    
    


    <table id="calendar1">
    </table>
    <table id="calendar2">
    </table>
	<table id="calendar3">
    </table>
    <table id="calendar4">
    </table>
    
 
  </body>
</html>
