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
    
    <section class="ftco-section">
		<div class="container">
			<div class="row d-md-flex">
				<div class="col-md-4 ftco-animate img about-image" style="background-image: url(images/destination-1.jpg);">
				</div>
				<div class="col-md-8 ftco-animate">
					<div class="row">
						<div class="col-md-12 nav-link-wrap mb-5">
							<div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
								<a class="nav-link active" id="v-pills-whatwedo-tab" data-toggle="pill" href="#v-pills-whatwedo" role="tab" aria-controls="v-pills-whatwedo" aria-selected="true">공통정보</a>								
								<a class="nav-link" id="v-pills-mission-tab" data-toggle="pill" href="#v-pills-mission" role="tab" aria-controls="v-pills-mission" aria-selected="false">소개정보</a>								
								<a class="nav-link" id="v-pills-goal-tab" data-toggle="pill" href="#v-pills-goal" role="tab" aria-controls="v-pills-goal" aria-selected="false">추가이미지</a>
							</div>
						</div>
						<div class="col-md-12 d-flex align-items-center">						  
							<div class="tab-content ftco-animate" id="v-pills-tabContent">							
								<div class="tab-pane fade show active" id="v-pills-whatwedo" role="tabpanel" aria-labelledby="v-pills-whatwedo-tab">
									<div>
										<h2 class="mb-4">Offering Reliable Hosting</h2>
										<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
									</div>
								</div>								
								<div class="tab-pane fade" id="v-pills-mission" role="tabpanel" aria-labelledby="v-pills-mission-tab">
									<div>
										<h2 class="mb-4">Exceptional Web Solutions</h2>
										<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste dolores consequatur</p>
									</div>
								</div>								
								<div class="tab-pane fade" id="v-pills-goal" role="tabpanel" aria-labelledby="v-pills-goal-tab">
									<div>
										
											<div class="mb-4">
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </section>

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