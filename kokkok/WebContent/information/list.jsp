<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="/include/link.jsp"%>
<%@ include file="/include/loader.jsp"%>	
	<script type="text/javascript">
	var contextPath='<%=request.getContextPath()%>';
	</script>
    <script src="${root}/resources/js/information_list.js"></script>        
    <style>
	#lastPage,#firstPage,#nextPageGroup,#prevPageGroup,.naviNum {
		cursor: Pointer;
	}	
	</style>	
</head>
<body>

<%@ include file="/include/nav.jsp"%>	
    
    <div class="hero-wrap" style="background-image: url('${root}/resources/images/bg_3.jpg'); height:100px">
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
						<div class="form-group">
							<div class="icon d-flex justify-content-center align-items-center">						
								<div class="col-lg-2">
									<input type="button" value="지역별 관광정보" class="btn btn-primary" id="infoArea" style="background-color: #f8f9fa; color: #dc3545">
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
									<select name="" id="contentTypeIdList" class="form-control">
										<option value="">타입선택</option>
										<option value="12">관광지</option>
										<option value="14">문화시설</option>
										<option value="15">축제공연행사</option>
										<option value="25">여행코스</option>
										<option value="28">레포츠</option>
										<option value="32">숙박</option>
										<option value="38">쇼핑</option>
										<option value="39">음식점</option>		
									</select>
								</div>
							</div>
							<div class="form-group infoitems infoArea infoKeyword infoFestival infoStay">
								<div class="select-wrap one-third">
									<div class="icon"><span class="ion-ios-arrow-down"></span></div>
									<select name="" id="areaCodeList" class="form-control">																				
									</select>
								</div>
							</div>
							<div class="form-group infoitems infoArea infoKeyword infoFestival infoStay">
								<div class="select-wrap one-third">
									<div class="icon"><span class="ion-ios-arrow-down"></span></div>
									<select name="" id="sigunguCodeList" class="form-control">																				
									</select>
								</div>
							</div>
							<div class="form-group infoitems infoLocation">
								<input type="text" id="mapX" class="form-control" value="126.981106" readonly="readonly" placeholder="Map X">
							</div>
							<div class="form-group infoitems infoLocation">
								<input type="text" id="mapY" class="form-control" value="37.568477" readonly="readonly" placeholder="Map Y">
							</div>
							<div class="form-group infoitems infoLocation">
								<input type="button" value="지 도" class="btn btn-secondary py-3 px-5">
							</div>							
							<div class="form-group infoitems infoLocation">
								<div class="range-slider">
									<span>
										<input type="range" id="location_range" value="1000" min="1000" max="20000" step="1000"/>
										거리 <input type="number" id="location_number" value="1000" min="1000" max="20000"/>m (1000~20000m)
									</span>									
								</div>
							</div>
							<div class="form-group infoitems infoKeyword">
								<input type="text" id="keyword" class="form-control" placeholder="검색어">
							</div>
							<div class="form-group infoitems infoFestival">
								<input type="text" id="eventStartDate" class="form-control datepicker" readonly="readonly" placeholder="시작날짜">
							</div>
							<div class="form-group infoitems infoFestival">
								<input type="text" id="eventEndDate" class="form-control datepicker" readonly="readonly" placeholder="끝날짜">
							</div>
						</div>
						<div class="form-group">
							<input type="button" id="getInfoList" value="검 색" class="btn btn-primary py-3 px-5">
						</div>
						</form>
					</div>					
				</div>
          
				<div class="col-lg-9">
					<div class="row informationItemList">					
					</div>					
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul id="navigator">
									<li><span>&lt;</span></li>
									<li><span>1</span></li>
									<li><span>2</span></li>
									<li><span>3</span></li>
									<li><span>4</span></li>
									<li><span>5</span></li>									
									<li class='naviNum' style="bgcolor: black;"><span>&gt;</span></li>									
								</ul>
							</div>
						</div>
					</div>
									 	
				</div> <!-- .col-md-8 -->
				
			</div>
		</div>
    </section> <!-- .section -->

<%@ include file="/include/footer.jsp"%>    
<%@ include file="/include/arrowup.jsp"%>
</body>
</html>