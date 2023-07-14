<%@page import="com.kh.finalProject.sector.model.vo.Sector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<meta charset="UTF-8">

<jsp:include page="/WEB-INF/views/common/header.jsp"/>



  <!-- 예약자가 보기 편하게 확인하는 form  -->
<div class="a">
    <form  action="${pageContext.request.contextPath}/reservation/reserSelect.me" method="get">
        <h3>농장 정보</h3>
        <div class="row">
            <div class="col">
                <label for="farm_name">예약구역명</label>
                <input value="${radio.sectorName }" readonly>
            </div>
            <div class="col">
                <label for="section_number">구역번호</label>
                <input value="${radio.sectorNo }" readonly>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label for="price">금액</label>
                <input id="price" name="price" value="${radio.sectorPrice }" readonly>
            </div>
            <div class="col">
                <label>예약 상태</label>
                <input value="예약가능" readonly>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label for="start">예약 시작일</label>
                <input name="start" value="" readonly>
                
            </div>
            <div class="col">
                <label for="crop">작물</label>
                <input value="" placeholder="${sessionScope.hItem1}" readonly>
            </div>
        </div>
        <h3>예약 정보</h3><small>*수정불가</small>
        <div class="row">
            <div class="col">
                <label for="name">예약자명</label>
             	<input type="text" id="" name="" value="${loginMember.memId}" readonly >
            </div>

            <div class="col">
                <label for="phone_number">전화번호</label>
                <input type="tel" id="" name="phone_number" value="${loginMember.memTel}" readonly>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <label for="address">예약자 주소</label>
                <input value="${loginMember.memAddr }" readonly>
            </div>

            <div class="col">
                <label for="email">이메일</label>
                <input type="email" id="email" name="email" value="${loginMember.memEmail }" readonly>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <label for="total_amount">총 결제금액</label>
                <input id="money" value="${radio.sectorPrice }" readonly>
            </div>
        </div>
    </form>
    
    <!--예약자의 정보가 insert 되어지는값  -->
    <form action="${pageContext.request.contextPath}/reservation/reserInsert.do" method="post" onsubmit="return check()">
    <div class="row">
    	<input type="hidden" value="${radio.farmNo}" name="rezNo" placeholder="예약번호">
    	<input type="hidden" value="${loginMember.memId}" name="memId" placeholder="예약자id">
    	<input type="hidden" value="${radio.farmNo}" name="farmNo" placeholder="농장번호">
    	<input type="hidden" value="${radio.sectorNo}" name="rezZone" placeholder="예약구역">
    	<input type="hidden" value="1" name="rezStatus" placeholder="예약가능상태">
    	<input type="hidden" value="${radio.sectorSchdule}" name="rezStart" placeholder="예약시작일">
    	<input type="hidden" value="${radio.sectorPrice}" name="rezPrice" placeholder="총금액">
    	<input type="hidden" value="${sessionScope.hItem1}" name="rezItem" placeholder="키울작물">
            <div class="col">
                <input type="submit" value="예약하기">
            </div>               
            <div class="col">
                <input type="reset" value="취소">
            </div>
    </div>
    </form>
    
    
    
    
    <script>
   
    
   	//예약날짜 치환
    switch(${radio.sectorSchdule}){
    case 1: 
    	num = "1월~3월";
    	console.log(num);
    	break;
    case 2:    	
    	num="4~6월";  
    	break;
    case 3:
    	num="7월~9월";   
    	break;
    default: 
    	   break;
    }
    $('input[name=start]').attr('value',num);    	   
    </script> 
     
    <script>
    // 인설트 되기전에 확인 confirm 하기
 
    function check(){   	
   		var check_submit=confirm('예약가능합니다'); 		
   		var check_submit=confirm('예약하시겠습니까?');
   		var check_submit=confirm('확인시 가상계좌가 발급됩니다.');
    return check_submit;    
    }
    </script> 
    
    
    
    
    
    <!-- 지도API -->
</div>
<div id="map" style="width:500px;height:400px; margin: auto;">
<div id="map" style="width:500px;height:400px;margin: auto; ">
</div>	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cae32d26dc4bc205934ad2152e3c8528"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.5338151, 126.8969784),
			level: 2 // 확대 레벨인데 2가 적당한거 같아요 
		};
		var map = new kakao.maps.Map(container, options);		
		var imageSrc = '${pageContext.request.contextPath}/resources/images/marker.png', // 마커이미지의 주소   
	    imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기
	    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.		
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption); //마커이미지설정입네다
		var markerPosition  = new kakao.maps.LatLng(37.5338151, 126.8969784); //마커 포지션이에여 지도 위치랑 같아요	     
		var marker = new kakao.maps.Marker({ //마커생성
		    position: markerPosition, // 포지션 설정립네다
		    image: markerImage	// 이건 이미지 설정
		});			
		marker.setMap(map); // 마커 표시 시작
	</script>
</div>





<style>
    body {font-family: Arial, sans-serif;}
    .a {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);}
    .a label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;}
    .a input {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;}
    .a .row {
        display: flex;
        align-items: center;}
    .a .row .col {
        flex: 1;
        margin-right: 10px;}
    .a input[type="submit"],
    .a input[type="reset"] {    
        background-color: #4caf50;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;}
    .a input[type="submit"]:hover,
    .a input[type="reset"]:hover {
        background-color: #45a049;}
}



</style>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</html>

