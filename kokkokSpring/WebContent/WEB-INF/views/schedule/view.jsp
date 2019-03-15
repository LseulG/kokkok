<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>방방콕콕 - 여행 일정 상세</title>
<%@ include file="/WEB-INF/views/include/link.jsp"%>
<%@ include file="/WEB-INF/views/include/loader.jsp"%> 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca50421e20fdf6befdf1ab193f76de7e&libraries=services"></script>
<link rel="stylesheet" href="${root}/resources/css/schedule.css">
<script src="${root}/resources/js/schedule_view.js"></script>
<script type="text/javascript">
$(document).ready(function() {	
	var jjimCnt = 0;
	var recommCnt = 0;
	$(".scheduleJJim").click(function(){
		if (jjimCnt != 0){
			$(".icon-heart").attr("class","icon-heart-o");
			jjimCnt = 0;			
		} else {
			$(".icon-heart-o").attr("class","icon-heart");
			jjimCnt = 1;
		}
	});
	$(".scheduleRecomm").click(function(){
		if (recommCnt != 0){
			$(".icon-thumbs-up").attr("class","icon-thumbs-o-up");
			recommCnt = 0;
		} else {
			$(".icon-thumbs-o-up").attr("class","icon-thumbs-up");
			recommCnt = 1;
		}		
	});
});
</script>
<style>
.icon-heart { color: #f85e5e;}
.icon-thumbs-up { color: #6887f1;}
#daySelectWrap {
	position:absolute;top:10px;left:10px;width:110px;height:45px;
	margin:10px 0 30px 10px;padding:2px;overflow-y:auto;
	background:#f85959; z-index: 1;font-size:12px;border-radius: 5px;
}
#daySelectWrap #mapDay {
	position:absolute; width:106px; height:41px; padding-left: 10px; border-radius: 5px;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>

    <!-- 내용 -->
    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_4.jpg');">
      <div class="overlay"></div>
      <div class="container slcontainer">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 일정 보기</h1>
          </div>
        </div>
      </div>
    </div>

<!-- 내용시작 -->
	<section class="ftco-section ftco-degree-bg">
	<div class="container">
	<div class="row">

<!-- 헤드 -->	
		<div class="col-md-12 ftco-animate destination">
			<div class="text p-3 row">			
				<div class="col-md-4 ftco-animate destination">
		    		<!-- 
		    		 <a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/destination-1.jpg');"></a>
		    		 -->
					<img src="${root}/resources/images/destination-1.jpg" alt="" class="img-fluid">
				</div>
				<div class="col-md-8">
						<h3 class="mb-3">${scheduleArticle.subject}</h3>
						${scheduleArticle.content}
						<hr>
						<p class="days">
							<span>
								<i class="icon-person"></i> ${scheduleArticle.userid} &nbsp;|&nbsp; 
								<i class="icon-today"></i> 여행기간 : ${scheduleArticle.startdate} - ${scheduleArticle.enddate} (${scheduleArticle.period}일)<br>
								<i class="icon-pencil"></i> 게시일 : ${scheduleArticle.logtime} &nbsp;|&nbsp; <i class="icon-pencil"></i> 최종 수정일 : ${scheduleArticle.updatetime}<br>
							</span>
						</p>
				</div>
			</div>	
		</div>
<!-- 헤드 -->	
	
<!-- 왼쪽 -->
		<div class="col-md-4 sidebar ftco-animate">
		
			<div class="sidebar-wrap bg-light ftco-animate viewWrap">
				<div class="cnt">
					<div class="scheduleJJim"><h3 class="heading mb-4"><i class="icon-heart-o"></i> 찜 18</h3></div>
					<div class="scheduleRecomm"><h3 class="heading mb-4"><i class="icon-thumbs-o-up"></i> 추천 18</h3></div>
					<div class="scheduleHit"><h3 class="heading mb-4"><i class="icon-eye"></i> 조회수 18</h3></div>
				</div>
				<h3 class="heading"><i class="icon-tag"></i> 여행지</h3>
              	<div class="tagcloud">
	                <a href="#" class="tag-cloud-link">전라남도</a>
	                <a href="#" class="tag-cloud-link">여수</a>
	                <a href="#" class="tag-cloud-link">순천</a>
	                <a href="#" class="tag-cloud-link">광양</a>
              	</div>
            </div>

<!-- 왼쪽 지도 -->		
        	<div class="sidebar-box ftco-animate">
				<div class="float_sidebar">
					<div class="" style="position: relative">
						<div class="map_wrap">
	    					<div id="writeMap" style="width:100%;height:400px;position:relative;overflow:hidden;"></div>
							<div id="daySelectWrap" class="bg_white">
					        <div class="select-wrap">
					            <select name="mapDay" id="mapDay" class="" onchange="selectChange()">
					            	<option value="day_1">1일차</option>
					            	<option value="day_2">2일차</option>
					            	<option value="day_3">3일차</option>
					            </select>
							</div>
					    </div>
						</div>
					</div>
				</div>
            </div>
        
        	

		</div>
<!-- 왼쪽 End -->
      
<!-- 오른쪽 -->    
		<div class="col-md-8 ftco-animate destination">
	         
			<!-- 일차별 내용 -->	
            <div class="daysAdd3" id="daysAdd3">
            <c:set var="idx" value="0"/>
            <c:forEach varStatus="day" var="review" items="${reviewArticle}">
            	<c:if test="${idx != review.tripday}">
            		<div class="sl-oneDay">
						<div class="sl-day">
							<label class="seul1" onclick="dayTogg(${review.tripday})">${review.tripday}일차<span>
							${scheduleArticle.startdate}
							</span></label>
							<hr>
						</div>
						<div class="seul1_Item${review.tripday}">
            		<c:set var="idx" value="${review.tripday}"/>
            	</c:if>
			            	<div class="itemBox sl-loc loc-updown">
			             		<span class="itemNum">${review.step}</span>
				            	<label class="seul2 itemTitle" id="itemTitle${review.tripday}_${review.step}">
				            	<c:set var="type" value="${review.bcode}"/>
					       		<c:choose>
					       			<c:when test="${type eq 3}"><i class="flaticon-meeting-point"></i> </c:when>
					       			<c:when test="${type eq 4}"><i class="flaticon-hotel"></i> </c:when>
					       			<c:when test="${type eq 5}"><i class="flaticon-fork"></i> </c:when>
					       		</c:choose>
				            	 ${review.subject}</label>
				            					
								<div class="sl-loc-cont itemCont1">
									${review.content}
								</div> 	
							</div>
            	<c:if test="${day.index < reviewArticle.size()-1}">
            		<c:if test="${reviewArticle.get(day.index+1).tripday != idx}">
            			</div>
            		</div>
            		</c:if>            	
            	</c:if>
        
			</c:forEach>
            </div> 
						
<!-- 댓글 목록 ***li,ul 짝 안맞는거 찾기~ -->
            <div class="pt-5">
              <!-- 댓글달기 -->           
              <div class="comment-form-wrap pt-5">
                <form action="#" class="bg-light commForm">
                <h5 class="mb-4"><i class="icon-comment"></i> 댓글 3</h5>
                	<div class="row commDiv">
                    	<textarea name="" id="message" cols="30" rows="1" class="form-control commText" placeholder="내용과 무관한 댓글, 악플은 삭제될 수 있습니다."></textarea>
                   		 <div class="center commBtnDiv">
	                   		 <input type="submit" value="등록" class="btn btn-primary commBtn">
                   		 </div>
                 	 </div>
                </form>
              </div>
            
           	 <div class="comment-form-wrap pt-5">
            	<ul class="comment-list">
	            	<li class="comment">
	                  <div class="comment-body">
	                  	<div class="row">
	                  		<h3><i class="icon-person"></i> 작성자 11</h3>
	                  		<div class="meta">2018.08.18 2:21</div>
	                  	</div>
	                  		<p>작성내용1 댓글이다 댓글</p>
	                  </div>
	                </li>
	
	                <li class="comment">
	                  <div class="comment-body">
	                  	<div class="row">
	                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
	                  		<div class="meta">2018.08.18 2:21</div>
	                  	</div>
	                  		<p>222222</p>
	                  </div>
	                </li>
	
	                <li class="comment">
	                  <div class="comment-body">
	                  	<div class="row">
	                  		<h3><i class="icon-person"></i> 작성자 22222</h3>
	                  		<div class="meta">2018.08.18 2:21</div>
	                  	</div>
	                  		<p>3333</p>
	                  </div>
	                </li>
	              </ul>
	           </div>
	             <!-- END comment-list -->
              
            </div>

		</div>
<!-- 오른쪽 END -->
	</div>
	</div>
	</section>
<!-- 내용끝 -->


<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ include file="/WEB-INF/views/include/arrowup.jsp"%>
<script src="${root}/resources/js/schedule_view_map.js"></script>

</body>
</html>