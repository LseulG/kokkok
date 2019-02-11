<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">방방곡곡</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
			</button>			
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
					<li class="nav-item active"><a href="tour.jsp" class="nav-link">Tour</a></li>
					<li class="nav-item"><a href="hotel.jsp" class="nav-link">Hotels</a></li>
					<li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li>
					<li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
					<li class="nav-item"><a href="information.jsp" class="nav-link">Information</a></li>					
				</ul>
			</div>
		</div>
	</nav>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_3.jpg');">
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
						<input type="button" value="지역별" class="btn btn-primary py-2 px-5 form-group">
						<input type="button" value="내주변" class="btn btn-primary py-2 px-5 form-group">
						<input type="button" value="통합검색" class="btn btn-primary py-2 px-5 form-group">
						<input type="button" value="행사검색" class="btn btn-primary py-2 px-5 form-group">
						<input type="button" value="숙박검색" class="btn btn-primary py-2 px-5 form-group">
					</div>
				</div>
			</div>
			
        	<div class="row">
				<div class="col-lg-12 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
					<h3 class="heading mb-4">지역별 관광정보</h3>
						<form action="#">
						<div class="fields">							
							<div class="form-group row">
								<div class="col-lg-4">
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
								<div class="col-lg-4">							
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
								<div class="col-lg-4">
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
								<div class="col-lg-4">
									<input type="text" class="form-control" placeholder="Map X">
								</div>
								<div class="col-lg-4">
									<input type="text" class="form-control" placeholder="Map Y">
								</div>
								<div class="col-lg-4">
									<input type="submit" value="지 도" class="btn btn-secondary py-1 px-3">
								</div>
								<div class="col-lg-4">
									<input type="text" class="form-control" placeholder="거리(m)">
								</div>
								<div class="col-lg-4">
									<input type="text" class="form-control" placeholder="검색어">
								</div>
								<div class="col-lg-4">
									<input type="text" id="checkin_date" class="form-control" placeholder="시작날짜">
								</div>
								<div class="col-lg-4">
									<input type="text" id="checkin_date" class="form-control" placeholder="끝날짜">
								</div>								
							</div>
							<div class="col-lg-4">
								<input type="submit" value="검 색" class="btn btn-primary py-3 px-5">
							</div>
						</div>
						</form>
					</div>					
				</div>
          
				<div class="col-lg-12">
					<div class="row">
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="/kokkokframe/informationdetail.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="/kokkokframe/informationdetail.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="/kokkokframe/informationdetail.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="/kokkokframe/informationdetail.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="/kokkokframe/informationdetail.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="/kokkokframe/informationdetail.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="/kokkokframe/informationdetail.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="/kokkokframe/informationdetail.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="/kokkokframe/informationdetail.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="/kokkokframe/informationdetail.jsp">관광지 제목</a></h3>
									<p>관광지 요약 설명</p>									
								</div>
							</div>
						</div>
						<div class="col-md-4 ftco-animate">
							<div class="destination">
								<a href="/kokkokframe/informationdetail.jsp" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
								<div class="icon d-flex justify-content-center align-items-center">
									<span class="icon-search2"></span>
								</div>
								</a>
								<div class="text p-3">									
									<h3><a href="/kokkokframe/informationdetail.jsp">관광지 제목</a></h3>
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

	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="js/range.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>