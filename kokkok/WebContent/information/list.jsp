<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
	$(document).ready(function() {		
		$("div.infoitems").hide();
		$("div.infoArea").show();
		$("h3.infoItemsTitle").text("지역별 관광정보");
		
		$("#infoArea").click(function(){
			$("div.infoitems").hide();
			$("div.infoArea").show();
			$("h3.infoItemsTitle").text("지역별 관광정보");
		});
		$("#infoLocation").click(function(){
			$("div.infoitems").hide();
			$("div.infoLocation").show();
			$("h3.infoItemsTitle").text("내주변 관광정보");
		});
		$("#infoKeyword").click(function(){
			$("div.infoitems").hide();
			$("div.infoKeyword").show();
			$("h3.infoItemsTitle").text("통합 검색");
		});
		$("#infoFestival").click(function(){
			$("div.infoitems").hide();
			$("div.infoFestival").show();
			$("h3.infoItemsTitle").text("행사 검색");
		});
		$("#infoStay").click(function(){
			$("div.infoitems").hide();
			$("div.infoStay").show();
			$("h3.infoItemsTitle").text("숙박 검색");
		});
	});
	</script>
</head>
<body>
<%@ include file="/include/nav.jsp"%>
    
    <div class="hero-wrap js-fullheight" style="background-image: url('${root}/resources/images/bg_3.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Information</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">관광정보</h1>
          </div>
        </div>
      </div>
    </div>
    
    <section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h3 class="heading mb-4">관광 정보</h3>
						<div class="row form-group">
						<div class="col-lg-2">
							<input type="button" value="지역별 관광정보" class="btn btn-primary" id="infoArea">
						</div>
						<div class="col-lg-2">
						<input type="button" value="내주변 관광정보" class="btn btn-primary" id="infoLocation">
						</div>
						<div class="col-lg-2">
						<input type="button" value="통합 검색" class="btn btn-primary" id="infoKeyword">
						</div>
						<div class="col-lg-2">
						<input type="button" value="행사 검색" class="btn btn-primary" id="infoFestival">
						</div>
						<div class="col-lg-2">
						<input type="button" value="숙박 검색" class="btn btn-primary" id="infoStay">
						</div>
						</div>
					</div>
				</div>
			</div>
			
        	<div class="row">
				<div class="col-lg-3 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
					<h3 class="heading mb-4 infoItemsTitle">지역별 관광정보</h3>
						<form action="#">
						<div class="fields">							
							<div class="form-group infoitems infoArea infoLocation">
								<div class="select-wrap one-third">
									<div class="icon"><span class="ion-ios-arrow-down"></span></div>
									<select name="" id="" class="form-control">
										<option value="">타입선택</option>
										<option value="">관광지</option>
										<option value="">문화시설</option>
										<option value="">축제공연행사</option>
										<option value="">여행코스</option>
										<option value="">레포츠</option>
										<option value="">숙박</option>
										<option value="">쇼핑</option>
										<option value="">음식점</option>		
									</select>
								</div>
							</div>
							<div class="form-group infoitems infoArea infoKeyword infoFestival infoStay">
								<div class="select-wrap one-third">
									<div class="icon"><span class="ion-ios-arrow-down"></span></div>
									<select name="" id="" class="form-control">
										<option value="">지역선택</option>
										<option value="">서울</option>
										<option value="">경기</option>
										<option value="">인천</option>										
									</select>
								</div>
							</div>
							<div class="form-group infoitems infoArea infoKeyword infoFestival infoStay">
								<div class="select-wrap one-third">
									<div class="icon"><span class="ion-ios-arrow-down"></span></div>
									<select name="" id="" class="form-control">
										<option value="">시군구선택</option>
										<option value="">종로구</option>
										<option value="">마포구</option>
										<option value="">노원구</option>										
									</select>
								</div>
							</div>
							<div class="form-group infoitems infoLocation">
								<input type="text" class="form-control" placeholder="Map X">
							</div>
							<div class="form-group infoitems infoLocation">
								<input type="text" class="form-control" placeholder="Map Y">
							</div>
							<div class="form-group infoitems infoLocation">
								<input type="submit" value="지 도" class="btn btn-secondary py-3 px-5">
							</div>
							<div class="form-group infoitems infoLocation">
								<input type="text" class="form-control" placeholder="거리(m)">
							</div>
							<div class="form-group infoitems infoKeyword">
								<input type="text" class="form-control" placeholder="검색어">
							</div>
							<div class="form-group infoitems infoFestival">
								<input type="text" id="checkin_date" class="form-control" placeholder="시작날짜">
							</div>
							<div class="form-group infoitems infoFestival">
								<input type="text" id="checkin_date" class="form-control" placeholder="끝날짜">
							</div>
						</div>
						<div class="form-group">
							<input type="button" value="검 색" class="btn btn-primary py-3 px-5">
						</div>
						</form>
					</div>					
				</div>
          
				<div class="col-lg-9">
					<div class="row">
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="${root}/information/view.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="${root}/information/view.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="${root}/information/view.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-2.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="${root}/information/view.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="${root}/information/view.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-3.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="${root}/information/view.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="${root}/information/view.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-4.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="${root}/information/view.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="${root}/information/view.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-5.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="${root}/information/view.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="${root}/information/view.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${root}/resources/images/destination-6.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="${root}/information/view.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
					</div>
					
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<li><a href="#">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
									 	
				</div> <!-- .col-md-8 -->
				
			</div>
		</div>
    </section> <!-- .section -->

<%@ include file="/include/footer.jsp"%>
<%@ include file="/include/loader.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>