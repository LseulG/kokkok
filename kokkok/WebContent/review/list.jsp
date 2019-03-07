<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
<%@ include file="/include/loader.jsp"%> 


<link rel="stylesheet" href="${root}/resources/css/community.css">
<link rel="stylesheet" href="${root}/resources/css/login.css">
<script src="${root}/resources/js/community_list.js"></script>

<!--사이드바스크롤  -->
<script type="text/javascript">
 var stmnLEFT = 1; // 오른쪽 여백 
 var stmnGAP1 = 1; // 위쪽 여백 
 var stmnGAP2 = 1; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 10; // 스크롤 시작위치 
 var stmnActivateSpeed = 15; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 5; //스크롤 속도 (클수록 느림)
 var stmnTimer; 
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
  if (stmnStartPoint != stmnEndPoint) { 
   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
   stmnRefreshTimer = stmnScrollSpeed; 
   }
  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
  } 
 function InitializeStaticMenu() {
  document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
  document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
  RefreshStaticMenu();
  }
 <!--사이드바스크롤  --> 
 
/* 더보기 */
$(window).on('load', function () {
    load('#js-load', '4');
    $("#js-btn-wrap .button").on("click", function () {
        load('#js-load', '4', '#js-btn-wrap');
    })
});
 
function load(id, cnt, btn) {
    var girls_list = id + " .js-load:not(.active)";
    var girls_length = $(girls_list).length;
    var girls_total_cnt;
    if (cnt < girls_length) {
        girls_total_cnt = cnt;
    } else {
        girls_total_cnt = girls_length;
        $('.button').hide()
    }
    $(girls_list + ":lt(" + girls_total_cnt + ")").addClass("active");
}
/* 더보기 */	

	
</script>

<style type="text/css">
.js-load {
    display: none;
}
.js-load.active {
    display: block;
}
.is_comp.js-load:after {
    display: none;
}
.btn-wrap, .lists, .main {
    display: block;
}
.main {
    max-width: 842px;
    margin: 0 auto;
   
}
.lists {
    margin-bottom: 4rem;
}
.btn-wrap {
    text-align: center;
}
.text-overflow {
  overflow: hidden; 
  display: block;
  text-overflow: ellipsis;
  white-space: nowrap; 
  width: 370px;
  height: 30px;
}
</style>

</head>
<body onload="InitializeStaticMenu();">
<%@ include file="/include/nav.jsp"%>
<%@ include file="/review/writemodal.jsp"%>

<div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_3.jpg');">
	<div class="overlay"></div>
	<div class="container">
      		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
         		<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
               <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 리뷰</h1>
      		    </div>
    	    </div>
       </div>
</div>


<!-- 내용시작 -->   
	<section class="ftco-section ftco-degree-bg" style="padding-top: 50px;">

	<div class="container">
		
<!-- 상단시작 -->
			<div class="row" style="height: 168px;">
				
				<div class="col-lg-3 sidebar ftco-animate" id="STATICMENU">
					<div class="sidebar-wrap bg-light ftco-animate">
					<h3 class="heading mb-4 infoItemsTitle">통합 검색</h3>
						<form action="#">
							<div class="fields">	
								<div class="form-group infoitems infoKeyword">
									<input type="text" id="keyword" class="form-control" placeholder="통합 검색어 입력">
								</div>
								
								<div class="form-group infoitems infoArea">
									<input type="text" id="Area" class="form-control" placeholder="장소 검색어 입력">
								</div>
								
								<div class="form-group infoitems infoStay">
									<input type="text" id="Stay" class="form-control" placeholder="숙박 검색어 입력">
								</div>
								
								<div class="form-group infoitems infoFood">
									<input type="text" id="Food" class="form-control" placeholder="맛집 검색어 입력">
								</div>
								
								<div class="form-group infoitems infoFestival">
									<input type="text" id="Festival" class="form-control" placeholder="문화 검색어 입력">
								</div>
							
							</div>		
											
							<!-- 	<div class="form-group">
										<input type="text" class="form-control" placeholder="검색어">
								</div> -->
								<div class="form-group">
									<input type="button" value="검 색" class="btn btn-primary py-2 px-5">
								</div>
								<hr>
								<h3 class="heading mb-4">리뷰 등록</h3>
							  	<div class="form-group">
							  		<input type="button" id="getReviewList" value="리뷰등록하기" class="btn btn-primary py-2 px-5" data-toggle="modal" data-target="#reviewWriteModal">
								</div>
							
						</form>
					</div>		
				</div>
			
<!--상단3사이드끝  -->
			
			
			
			
				<div class="col-lg-9 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h3 class="heading mb-4">여행 리뷰</h3>
						<div class="form-group">
							<div class="icon d-flex justify-content-center align-items-center">
								
								<div class="col-lg-2">
									<input type="button" value="통합 검색" class="btn btn-primary" id="infoKeyword" style="background-color: #f8f9fa; color: #dc3545">
								</div>
								<div class="col-lg-2">
									<input type="button" value="장소 리뷰" class="btn btn-primary" id="infoArea">
								</div>
								<div class="col-lg-2">
								<input type="button" value="숙박 리뷰" class="btn btn-primary" id="infoStay">
								</div>
								<div class="col-lg-2">
								<input type="button" value="맛집 리뷰" class="btn btn-primary" id="infoFood">
								</div>
								<div class="col-lg-2">
								<input type="button" value="문화 리뷰" class="btn btn-primary" id="infoFestival">
								</div>
								
							</div>
						</div>
					</div>
				</div>
<!-- 상단9끝  -->
			
			</div>
<!-- 상단로우끝 -->	
		
<!-- 하단우측시작 -->
			
	
			<div class="col-lg-9 ftco-animate main lists" id="js-load" style="margin-left: 277px;">
			
					<div class="row">
						
						
						<c:forEach var="i" begin="1" end="6">
						
						
					
						  <div class="lists__item js-load col-md-6 ftco-animate destination">
								<div class="text p-3">
									<span>
										<i class="flaticon-fork" style="font-size: 25px; font-weight: bold;">맛집 리뷰</i>
										<i class="icon-person" style="font-size: 12px; float: right; padding-top: 10px;">작성자 id : kokkok<br>
											<i class="icon-pencil" style="font-size: 12px;">작성일 : 18.08.18</i>
										</i>
									</span>
								</div>
									<a href="${root}/review/view.jsp "class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url('${root}/resources/images/food-${i}.jpg');">
						    		<div class="icon d-flex justify-content-center align-items-center">
				    					<span class="icon-search2"></span>
				    				</div>
					    			</a>
						    		<div class="text p-3">
						    			<div class="d-flex">
								    		
						    			</div>
								    		<p class="text-overflow">이름은 들어봤겠지? 대표적인 라면 맛집 이치란! 사실 킨류 vs 이치란 vs 잇푸도 중 고민하다가 선택한 곳이었다. 
								    		한국인의 입맛에 정말 딱인듯! 일본라멘 특유의 구수~한(?) 냄새가 싫다면, 맛은 담백, 마늘 1쪽, 비법소스를 3~4배쯤 첨가하길! 
								    		본인의 취향껏 주문서를 작성할 수 있어 더 좋다! 해장용으로도 으뜸!Tip. 도톤보리 다리 밑 매장은 늘 줄이 기니 거기서 
								    		20m가량 떨어진 분점으로 가면 웨이팅 없이 먹을 수 있다.</p>
						    				<br>
						    				<h5 align="center"><a href="${root}/review/view.jsp">상세보기</a></h5>
						    				<hr>
							    			<p class="bottom-area d-flex">
							    			<span><i class="icon-thumbs-o-up"></i> 추천 : 18 &nbsp;|&nbsp; <i class="icon-commenting-o"></i> 댓글 : 2</span>
							    	</div>
							</div>	
				
						
					
					
						 </c:forEach>
					
			
			
				 <!--더보기-->
					 
  			
		 </div>
		  <div id="js-btn-wrap" class="btn-wrap"> <a href="javascript:;" class="button"><input type="button" value="더보기" class="btn btn-primary py-2 px-4"></a> </div>
				 <!--더보기  -->	
	 </div> 
<!-- 하단 목록 END-->	
 	


<!-- 하단로우끝 -->

		</div>
</section>
<!-- 내용시작 END--> 




<%@ include file="/include/footer.jsp"%> 
<%@ include file="/include/arrowup.jsp"%>




</body>
</html>