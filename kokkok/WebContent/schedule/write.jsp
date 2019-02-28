<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>방방콕콕 - 여행 일정 쓰기</title>
  	<%@ include file="/include/link.jsp"%>
  	<%@ include file="/include/loader.jsp"%> 

  	<link rel="stylesheet" href="${root}/resources/css/schedule.css">
  	<link rel="stylesheet" href="${root}/resources/css/sl-map.css">  
  	<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
 
 <script type="text/javascript">
var tripStart = null;
var tripEnd = null;
var tripType = null;
var tripPersons = null;
var tripThema = null;
 
$(document).ready(function() {
	$("#setSchedule").click(function(){
		setScheduleInfo();
	});
});

function setScheduleInfo(){
	tripStart = $("#checkin_date").val();
	tripEnd = $("#checkout_date").val();
	tripType = $("#tripType").val();
	tripPersons = $("#tripPersons").val();
	tripThema = $("#tripThema").val();
	
	// 여행 일 수 계산
	var startDay = new Date(tripStart);	
	var endDay = new Date(tripEnd);
	var tripDays = dateDiff(startDay, endDay);
	
	if (tripStart == "" || tripEnd == "") {
		alert("출발일과 도착일을 선택해주세요.");
	} else if(tripPersons == "no" || tripThema == "no") {
		alert("여행 인원과 테마를 선택해주세요.");
	} else if(tripDays < 1) {
		alert("도착일은 출발일 이후 날짜만 가능합니다.\n" + "(당일치기는 출발일과 도착일을 같은 날짜로 지정해주세요.)")
	} else {
		var result = confirm("여행기간: "+ tripStart +"-"+ tripEnd +" ("+ tripDays +"일)\n" + 
				"여행 인원: "+ tripPersons + "\n" +
				"여행 테마: "+ tripThema + "\n" +
				"위의 정보로 '"+ tripType +"'을(를) 만들겠습니까?");
		if(result){
			alert("만들기 성공");
			var str = tripStart +"-"+ tripEnd +" ("+ tripDays +"일) | " + 
				tripPersons + " | " + tripThema + " | " + tripType;
			$("#scheduleSetting").text(str);
		} 
	}
}

// 여행 일수 계산 함수
function dateDiff(start, end){
	var diff = end - start;
	var day = 1000 * 60 * 60 * 24;	//밀리세컨초 * 초 * 분 * 시간
	
	var days = parseInt(diff/day) + 1;
	
	return days;
}
 </script>
 
  </head>
  <body>
   <%@ include file="/include/nav.jsp"%>
   <%@ include file="/schedule/writemodal.jsp"%>
   
<!-- 이미지 -->
    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Tour</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 일정 쓰기</h1>
          </div>
        </div>
      </div>
    </div>

<!-- 내용시작 -->
	<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">
<!-- 왼쪽 검색창 -->	
		<div class="col-lg-3 sidebar">
		<div class="sidebar-wrap bg-light ftco-animate">
			<h3 class="heading mb-4">대표 사진</h3>
			<div class="ftco-animate destination">
		    		<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/destination-1.jpg');">
			    		<div class="icon d-flex justify-content-center align-items-center">
	    					<span class="icon-plus"></span>
	    				</div>
		    		</a>
			</div>
		</div>
		
        <div class="sidebar-wrap bg-light ftco-animate">
			<h3 class="heading mb-4">일정 정보</h3>
        	<form action="#">
        	<div class="fields">
        	
	         	<div class="col-md-12">
					<!-- 달력1 -->
        			<div class="form-group">
	                	<input type="text" id="checkin_date" class="form-control" placeholder="출발일" readonly="readonly">
	              	</div>
	         	</div>
	         	<div class="col-md-12">
	             	 <div class="form-group">
	                	<input type="text" id="checkout_date" class="form-control" placeholder="도착일" readonly="readonly">
	             	 </div>
       			</div>
       			
       			<div class="col-md-12">
					<!-- 일정(계획/후기) -->
        			<div class="form-group">
		            	<div class="select-wrap one-third">
		                	<div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="tripType" id="tripType" class="form-control">
		                    	<option value="여행 계획">여행 계획</option>
		                    	<option value="여행 후기">여행 후기</option>
		                    </select>
	                  	</div>
        			</div>
       			</div>
       	
				<div class="col-md-12">
       			<!-- 인원 -->
		        	<div class="form-group">
		                <div class="select-wrap one-third">
		                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="tripPersons" id="tripPersons" class="form-control">
		                      	<option value="no">여행 인원</option>
		                      	<option value="1명">1명</option>
		                      	<option value="2명">2명</option>
		                      	<option value="3~5명">3~5명</option>
		                      	<option value="6~10명">6~10명</option>
		                      	<option value="단체">단체</option>
		                    </select>
	                  	</div>
		            </div>
				</div>
       	
	         	<div class="col-md-12">
					<!-- 일정(계획/후기) -->
        			<div class="form-group">
		            	<div class="select-wrap one-third">
		                	<div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                    <select name="tripThema" id="tripThema" class="form-control">
		                    	<option value="no">여행 테마</option>
		                    	<option value="친구랑 여행">친구랑 여행</option>
		                    	<option value="나홀로 여행">나홀로 여행</option>
		                    	<option value="커플 여행">커플 여행</option>
		                    	<option value="가족 여행">가족 여행</option>
		                    	<option value="단체 여행">단체 여행</option>
		                    	<option value="패키지 여행">패키지 여행</option>
		                    </select>
	                  	</div>
        			</div>
       			</div>
       			
       			<!-- 검색 버튼 -->
	        	<div class="form-group">
	            	<input type="button" value="일정 만들기" id="setSchedule" class="btn btn-primary py-3 px-5">
	        	</div>
		    </div>
			</form>
        </div>
		</div>
<!-- 왼쪽 검색창 END -->

<!-- 오른쪽 -->    
		<div class="col-md-8 ftco-animate destination">
			<div class="text p-3">
				
				<div class="comment-form-wrap">
	                <form action="#" class="p-4 bg-light">
	                	<div class="form-group">
	                    	<input type="text" id="scheduleTitle" class="form-control" placeholder="여행 제목을 입력하세요"><br>
	                    	<textarea name="" id="message" cols="30" rows="5" class="form-control" placeholder="간단히 여행을 소개해주세요 =)"></textarea>
	                 	 </div>
	                 	 <hr>
						<p class="days">
							<span id="scheduleSetting">
								test								
							</span>
						</p>
	                </form>
	              </div>
	              <br>
				
				<!-- 지도 -->	<!-- 지도에서 선택하고 n일차, n번째 선택, 등록버튼? -->		
				<div class="">
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e&libraries=services"></script>
					<div class="map_wrap">
    					<div id="writeMap" style="width:100%;height:400px;position:relative;overflow:hidden;"></div>
					</div>
				
				</div>		
				<br>
			
				<c:forEach var="i" begin="1" end="6">
					<div class="sl-oneDay">
				        <div class="sl-day">
				        	<label class="seul1">${i}일차 </label><span>2018.08.0${i}</span>
				        	<input type="button" id="" value="+ 일정 추가" class="btn btn-primary scheduleAdd" onclick="createItem(${i});"/>
				        	<hr>
				        </div>
				        <div class="" id="itemBoxWrap_${i}"></div>
					</div>
				</c:forEach>
            
            		
            
			</div>
		</div>
<!-- 오른쪽 END -->
	</div>
	
		<div align="center">
					<input type="button" value="+일정추가" class="btn btn-primary py-3 px-5" data-toggle="modal" data-target="#scheduleWriteModal">
					
					<a href="${root}/schedule/list.jsp">
						<input type="button" value="등록하기" class="btn btn-primary py-3 px-5">
					</a>
				
	        		<input type="button" id="addItem" value="일정추가" onclick="createItem();" />
	       		 	<input type="button" id="submitItem" value="제출" onclick="submitItem();" />
	  	</div>
	
	</div>
	</section>
<!-- 내용끝 -->

<%@ include file="/include/footer.jsp"%> 
<%@ include file="/include/arrowup.jsp"%>
<script src="${root}/resources/js/schedule-write.js"></script>
<script src="${root}/resources/js/sl-map-view.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js" ></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.js" ></script> 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e&libraries=services"></script>


</body>
</html>